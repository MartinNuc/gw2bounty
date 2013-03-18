<?php

use Kdyby\BootstrapFormRenderer\BootstrapRenderer;
use Nette\Utils\Html;
use Nette\Application\UI\Form;

/**
 * Description of GuildPresenter
 *
 * @author mist
 */
class GuildPresenter extends BasePresenter {

    
    private $guildRepository;
    private $guildmasterRepository;
    
    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->guildRepository = $this->context->guildRepository;
        $this->guildmasterRepository = $this->context->guildMasterRepository;
    }


    protected  function createComponentGuildPasswordForm($name) {
        $form = new Form($this, $name);
        
        $form->setRenderer(new BootstrapRenderer);
        $form->getElementPrototype()->addAttributes(array('class' => 'form-horizontal'));
        
        $form->addText('password', _('New password'))
                ->addRule($form::FILLED, _('Enter guild password. This password is used by members to log in and participate on your guild missions.'))
                ->addRule($form::MIN_LENGTH, _('Member password must be at least %d characters long.'), 10)
                ->setAttribute('autoComplete', "off");

        $form->addSubmit('submit', _("Save"));
        $form->onSuccess[] = array($this, 'changepassword_submit');
        return $form;
    }

    public function changepassword_submit($form) {
        $password = $form['password']->getValue();
        
        $guild = $this->guildmasterRepository->findAll()->select('guild:*')->where("guildmaster.id", $this->user->getId())->fetch();
        if (isset($guild) != false && $guild != NULL)
        {
            $this->guildRepository->changeGuildPassword($guild->id, $password);
            $this->flashMessage(_('The new password was set. Now you can tell it to guild members.'), 'success');
        }
        else
        {
            $this->flashMessage(_('Unable to change guild password.'), 'alert-error');
        }
        
        $this->redirect('this');

    }

    
    public function actionDefault() {
        
    }

    public function renderDefault() {
        
    }

}