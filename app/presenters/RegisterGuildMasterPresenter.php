<?php

use Kdyby\BootstrapFormRenderer\BootstrapRenderer;
use Nette\Utils\Html;
use Nette\Application\UI\Form;
/**
 * Description of RegisterGuildMaster
 *
 * @author mist
 */
class RegisterGuildMasterPresenter extends BasePresenter {

    /** @var Todo\TaskRepository */
    private $guildmasterRepository;
    private $serverRepository;
    private $regionRepository;
    private $guildRepository;

    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->guildmasterRepository = $this->context->guildMasterRepository;
        $this->serverRepository = $this->context->serverRepository;
        $this->regionRepository = $this->context->regionRepository;
        $this->guildRepository = $this->context->guildRepository;
    }
    
    protected  function createComponentRegisterForm($name) {
        $form = new Form($this, $name);
        
        $form->setRenderer(new BootstrapRenderer);
        $form->getElementPrototype()->addAttributes(array('class' => 'form-horizontal'));
        
        $grouped = $form->addContainer('grouped');
        $grouped->currentGroup = $form->addGroup(_('Guild master information'), FALSE);
        $grouped->addText('username', _('Username'))->addRule($form::FILLED, _('Enter username which you want to use for loggin in this application.'))
                ->setAttribute('autoComplete', "off");
        $grouped->addPassword('password', _('Password'))->addRule($form::FILLED, _('Enter password which you want to use for loggin in this application.'))
                ->setAttribute('autoComplete', "off");
        $grouped->addText('gamenick', _('Game character'))->addRule($form::FILLED, _('Enter your ingame nick. Other guilds may whisper you for a cooperation during guild missions.'))
                ->setAttribute('autoComplete', "off");

        $grouped->currentGroup = $form->addGroup('Guild information', FALSE);
        $selectbox = array();
        $regions = $this->regionRepository->findAll();
        foreach ($regions as $region)
        {
            $servers = $this->serverRepository->findBy(array('region_id' => $region->id))->order('name')->fetchPairs('id', 'name');
            if (count($servers) > 0)
                $selectbox[$region->name] = $servers;
        }
        
        $grouped->addText('guildname', _('Guild name'))->addRule($form::FILLED, _('Enter name of your guild.'))
                ->setAttribute('autoComplete', "off");

        $grouped->addSelect('server', _('Server'), $selectbox)->addRule($form::FILLED, _('Choose server which your guild plays on.'));

        $form->addSubmit('submit', _('Register'));
        $form->onSuccess[] = array($this, 'register_submit');
        return $form;
    }

    public function register_submit($form) {
        $username = $form['grouped']['username']->getValue();
        $password = Authenticator::calculateHash($form['grouped']['password']->getValue());
        $gamenick = $form['grouped']['gamenick']->getValue();
        
        $server = $form['grouped']['server']->getValue();
        $guildname = $form['grouped']['guildname']->getValue();
        
        try {
            $guildmasterid = $this->guildmasterRepository->createGuildmaster($username, $password, $gamenick);
            $this->guildRepository->createGuild($guildname, $server, $guildmasterid);

            $this->flashMessage(_('You were succesfully registred. Now you can log in.'), 'success');

            $this->redirect('Guild:default');
        }
        catch (Exception $e)
        {
            $this->flashMessage(_('Unable to create your registration. Try different username.'), 'alert-error');
            $this->redirect('this');

        }

    }


    public function actionDefault() {
        
    }

    public function renderDefault() {
        $this->template->registerForm = $this['registerForm'];
    }
    
}