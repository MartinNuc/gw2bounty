<?php

/**
 * Base presenter for all application presenters.
 */
abstract class BasePresenter extends Nette\Application\UI\Presenter
{

    /** @persistent */
    protected $lang;

    /** @var \h4kuna\GettextLatte */
    protected $translator;
    
    public function injectTranslator(\h4kuna\GettextLatte $translator) {
        $this->translator = $translator;
    }
    
    protected function createTemplate($class = NULL) {
        $tpl = parent::createTemplate($class);
        return $tpl;
    } 
    
    protected function startup()
    {
        parent::startup();
        $this->context->translator->setLanguage("cs");
        $this->lang = $this->translator->loadLanguage($this->lang); 
    }
}
