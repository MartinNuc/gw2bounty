<?php

class TemplatePresenter extends BasePresenter {

//------------------------------------------------------------------------------
    private $classTemplate = NULL;

    /**
     * vygeneruje sablony
     */
    public function actionTranslate() {
        //clear directory
        $temp = $this->context->parameters['tempDir'] . '/cache/_Nette.FileTemplate';
        if (file_exists($temp) == true) {
            foreach (\Nette\Utils\Finder::findFiles('*')->from($temp) as $file) {
                unlink($file->getPathname());
            }
        }

        // buil template from appDir
        $this->classTemplate = '\h4kuna\Template';
        $tpl = $this->template;
        foreach (\Nette\Utils\Finder::findFiles('*.latte')->from($this->context->parameters['appDir']) as $file) {
            $tpl->setFile($file->getPathname());
            $tpl->compileTemplate();
        }
        $this->terminate();
    }

    protected function createTemplate($class = NULL) {
        if ($this->classTemplate) {
            $class = $this->classTemplate;
        }
        return parent::createTemplate($class);
    }

    private function save() {
        if (!$this->data) {
            $this->terminate();
        }
        $path = $this->context->parameters['tempDir'] . '/cache/_Nette.FileTemplate/from_db.php';
        \Utility\FileTools::mkDir(dirname($path));
        $file = new \SplFileObject($path, 'w');
        $file->fwrite("<?php\n");

        $sql = $this->context->system->findAll('data_key')->where('id', array(6));
        $this->appendToData($sql);
        $this->save();

        foreach ($this->data as $v) {
            $slash = "'";
            if (strstr($v, "'") !== FALSE) {
                if (strstr($v, '"') !== FALSE) {
                    throw new \RuntimeException('V textu z databáze použij jeden typ uvozovek \' nebo " viz: ' . $v);
                }
                $slash = '"';
            }
            $file->fwrite("gettext($slash" . $v . "$slash);\n");
        }
    }

    private function appendToData($iterator) {
        foreach ($iterator as $val) {
            foreach ($val as $v) {
                $this->data[] = $v;
            }
        }
    }

}