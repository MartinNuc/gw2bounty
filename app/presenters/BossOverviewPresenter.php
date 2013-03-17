<?php

/**
 * Description of BossOverviewPresenter
 *
 * @author mist
 */
class BossOverviewPresenter extends BasePresenter {

    private $bossRepository;
    
    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->bossRepository = $this->context->bossRepository;
    }

    public function actionDefault() {
        
    }

    public function renderDefault() {
        $this->template->bosses = $this->bossRepository->lastSeen();
    }
    
    public function actionDetail($id) {
        
    }

    public function renderDetail($id) {
        $this->template->boss = $this->bossRepository->lastSeen()->where(array("boss.id" => $id))->fetch();
    }

}