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

		$form->addPassword('password', 'Password:')
			->setRequired(_('Please enter your password.'));

		$form->addCheckbox('remember', _('Keep me signed in'));

		$form->addSubmit('send', _('Sign in'));

		// call method signInFormSucceeded() on success
		$form->onSuccess[] = $this->signInFormSucceeded;
		return $form;
	}



	public function signInFormSucceeded($form)
	{
		$values = $form->getValues();

		if ($values->remember) {
			$this->getUser()->setExpiration('+ 14 days', FALSE);
		} else {
			$this->getUser()->setExpiration('+ 20 minutes', TRUE);
		}

		try {
			$this->getUser()->login($values->username, $values->password);
                        $this->redirect('GuildMissions:');
		} catch (Nette\Security\AuthenticationException $e) {
			$form->addError($e->getMessage());
                        $this->redirect('Homepage:');
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
