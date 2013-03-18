<?php

use Nette\Application\UI;


/**
 * Sign in/out presenters.
 */
class SignPresenter extends BasePresenter
{

	/**
	 * Sign-in form factory.
	 * @return Nette\Application\UI\Form
	 */
	protected function createComponentSignInForm()
	{
		$form = new UI\Form;
		$form->addText('username', _('Username:'))
			->setRequired(_('Please enter your username.'));

		$form->addPassword('password', _('Password:'))
			->setRequired(_('Please enter your password.'));

                $form->addSubmit('send', _('Sign in'));

		// call method signInFormSucceeded() on success
		$form->onSuccess[] = $this->signInFormSucceeded;
		return $form;
	}

	protected function createComponentMemberSignInForm()
	{
		$form = new UI\Form;
		$form->addText('accesscode', _('Guild access code:'))
			->setRequired(_('Please guild access code.'));

                $form->addSubmit('sendmember', _('Sign in'));

		$form->onSuccess[] = $this->signMemberInFormSucceeded;
		return $form;
	}

	public function signInFormSucceeded($form)
	{
		$values = $form->getValues();

                $this->getUser()->setExpiration('+ 14 days', FALSE);

		try {
			$this->getUser()->login($values->username, $values->password);
                        $this->redirect('GuildMissions:');
		} catch (Nette\Security\AuthenticationException $e) {
			$form->addError($e->getMessage());
                        $this->redirect('Sign:');
			return;
		}
	}

	public function signMemberInFormSucceeded($form)
	{
		$values = $form->getValues();

                $this->getUser()->setExpiration('+ 14 days', FALSE);

		try {
			$this->getUser()->login($values->accesscode, "");
                        $this->redirect('GuildMissions:');
		} catch (Nette\Security\AuthenticationException $e) {
			$form->addError($e->getMessage());
                        $this->redirect('Sign:');
			return;
		}
	}

	public function actionOut()
	{
		$this->getUser()->logout();
		$this->flashMessage(_('You have been signed out.'));
		$this->redirect('in');
	}

}
