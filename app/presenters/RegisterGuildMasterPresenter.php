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

    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->guildmasterRepository = $this->context->guildMasterRepository;
    }
    
    protected  function createComponentRegisterForm($name) {
        $form = new Form($this, $name);
        $form->setRenderer(new BootstrapRenderer);
        $form->getElementPrototype()->addAttributes(array('class' => 'form-horizontal'));
        $form->addText('username', _('Username'))->addRule($form::FILLED, _('Enter username which you want to use for loggin in this application.'))
                ->setAttribute('autoComplete', "off");
        $form->addPassword('password', _('Password'))->addRule($form::FILLED, _('Enter password which you want to use for loggin in this application.'))
                ->setAttribute('autoComplete', "off");
        $form->addText('gamenick', _('Game character'))->addRule($form::FILLED, _('Enter your ingame nick. Other guilds may whisper you for a cooperation during guild missions.'))
                ->setAttribute('autoComplete', "off");

        $form->addSubmit('submit', _('Register'));

        $form->onSuccess[] = array($this, 'register_submit');
        return $form;
    }

    public function register_submit($form) {
        $username = $form['username']->getValue();
        $password = $form['password']->getValue();
        $gamenick = $form['gamenick']->getValue();
        
        $this->guildmasterRepository->createGuildmaster($username, $password, $gamenick);
        
        $this->flashMessage('You were succesfully registred. Now you can log in.', 'success');
        
        $this->redirect('Homepage:default');
    }


    public function actionDefault() {
        
    }

    public function renderDefault() {
        $this->template->registerForm = $this['registerForm'];
    }

}