<?php

/**
 * Description of CalendarPresenter
 *
 * @author mist
 */
class CalendarPresenter extends BasePresenter {

    private $missionRepository;
    private $guildmasterRepository;
    
    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->missionRepository = $this->context->missionRepository;
        $this->guildmasterRepository = $this->context->guildMasterRepository;
    }

    public function actionDefault() {
        
    }

    public function renderDefault() {
        if ($this->user->isInRole('guildmaster'))
        {
            $server = $this->guildmasterRepository->findAll()->where('guildmaster.id', $this->user->getId())->select("guild:server.id")->fetch()->id;
            $this->template->missions = $this->missionRepository->findAll()
                ->where('(mission.timestamp >= ? OR mission.state_id = 2 OR mission.state_id = 3)', \Nette\DateTime::from(''))->order('mission.timestamp')
                ->where('guild.server_id = ?', $server);
        }
        else if ($this->user->isInRole('member'))
        {
            $server = $this->guildmasterRepository->findAll()->where('guildmaster.id', $this->user->getId())->select("guild:server.id")->fetch()->id;
            $this->template->missions = $this->missionRepository->findAll()
                ->where('(mission.timestamp >= ? OR mission.state_id = 2 OR mission.state_id = 3)', \Nette\DateTime::from(''))->order('mission.timestamp')
                ->where('guild.server_id = ?', $server);
        }
        else
        {
            $this->template->missions = $this->missionRepository->findAll()
                ->where('(mission.timestamp >= ? OR mission.state_id = 2 OR mission.state_id = 3)', \Nette\DateTime::from(''))->order('mission.timestamp');
        }
    }

}