<?php

/**
 * Description of CalendarPresenter
 *
 * @author mist
 */
class CalendarPresenter extends BasePresenter {

    private $missionRepository;
    
    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->missionRepository = $this->context->missionRepository;
    }

    public function actionDefault() {
        
    }

    public function renderDefault() {
        $this->template->missions = $this->missionRepository->findAll()
                ->where('mission.timestamp >= ?', \Nette\DateTime::from(''))->order('mission.timestamp');
    }

}