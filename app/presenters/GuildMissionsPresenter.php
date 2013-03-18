<?php

use Kdyby\BootstrapFormRenderer\BootstrapRenderer;
use Nette\Utils\Html;
use Nette\Application\UI\Form;

/**
 * Description of GuildMissionsPresenter
 *
 * @author mist
 */
class GuildMissionsPresenter extends BasePresenter {

    private $missionRepository;
    private $tierRepository;
    private $guildmasterRepository;
    private $bossRepository;
    private $searchedbossesRepository;
    
    private $missionId;
    
    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->missionRepository = $this->context->missionRepository;
        $this->tierRepository = $this->context->tierRepository;
        $this->guildmasterRepository = $this->context->guildMasterRepository;
        $this->bossRepository = $this->context->bossRepository;
        $this->searchedbossesRepository = $this->context->searchedbossesRepository;
    }

    public function actionDefault() {
        
    }
    
    public function actionStart($id)
    {
        $this->missionRepository->start($id);
        
        $bosses = $this->bossRepository->findAll();
        foreach($bosses as $boss)
        {
            $this->searchedbossesRepository->createBossHunt($boss->id, $id);
        }
        
        $this->flashMessage('Guild mission started.', 'success');
        $this->redirect('GuildMissions:detail', $id);
    }
    
    public function actionFinish($id)
    {
        $this->missionRepository->finish($id);
        
        $hunts = $this->searchedbossesRepository->findAll();
        foreach($hunts as $hunt)
        {
            if($hunt->chosen == true)
                $this->searchedbossesRepository->markBossAsDead($hunt->id);
        }
        
        $this->flashMessage('Guild mission finished.', 'success');
        $this->redirect('GuildMissions:default');
    }

    public function actionDelete($id)
    {
        $this->missionRepository->remove($id);
        $this->flashMessage('Guild mission canceled.', 'success');
        $this->redirect('GuildMissions:');
    }
    
    public function actionCancel($id)
    {
        $this->missionRepository->cancel($id);
        $this->flashMessage('Guild mission canceled.', 'success');
        $this->redirect('GuildMissions:');
    }
    
    public function actionKill($id)
    {
    }
    
    protected  function createComponentNewGuildMissionForm($name) {
        $form = new Form($this, $name);
        
        $form->setRenderer(new BootstrapRenderer);
        $form->addHidden('dtp_input1')->setHtmlId('dtp_input1')->addRule($form::FILLED);
        
        $tiers = $this->tierRepository->findAll()->fetchPairs('id', 'name');
        $form->addSelect('tier', _('Tier:'), $tiers);
        
        $form->addSubmit('submit', _('Plan this guild mission'));

        $form->onSuccess[] = array($this, 'newGuildMission_submit');
        return $form;
    }

    public function newGuildMission_submit($form) {
        $tier = $form['tier']->getValue();
        $timestamp = $form['dtp_input1']->getValue();
        
        $guild = $this->guildmasterRepository->findBy(array('guildmaster.id' => $this->user->id))->select('guild:id AS ID')->fetch()->ID; 
       
        $this->missionRepository->createMission($timestamp, $guild, $tier, 1);
        
        //$this->flashMessage('Guild mission planned.', 'success');
        
        $this->redirect('GuildMissions:');
    }
    
    protected  function createComponentKillBossesForm($name) {
        $form = new Form($this, $name);
        
        $form->setRenderer(new BootstrapRenderer);
        $form->getElementPrototype()->addAttributes(array('class' => 'checkform'));
        
        $bosses = $this->bossRepository->findAll();
        foreach($bosses as $boss)
        {
            $form->addCheckbox('check' . $boss->id, $boss->name);
        }
        $form->addHidden('msid', $this->missionId);
        
        $form->addSubmit('submit', _('Show their locations'));

        $form->onSuccess[] = array($this, 'killBosses_submit');
        return $form;
    }

    public function killBosses_submit($form) {
        $missionId = $form['msid']->getValue();
        $this->missionRepository->setKillBossesState($missionId);
        $bosses = $this->bossRepository->findAll();
        foreach($bosses as $boss)
        {
            if ($form['check' . $boss->id]->getValue() == true)
            {
                $this->searchedbossesRepository->markAsTarget($missionId, $boss->id);
            }
        }
        $this->redirect('GuildMissions:detail', $missionId);
    }

    public function renderDefault() {
        $this->template->future_missions = $this->missionRepository->findAll()
                ->where('mission.state_id = ?', 1)
                ->where('guild.guildmaster.id', $this->user->getId())
                ->order('mission.timestamp');
        $this->template->past_missions = array();
                /*$this->missionRepository->findAll()
                ->where('mission.state_id = ? OR mission.state_id = ?', 4, 5)
                ->where('guild.guildmaster.id', $this->user->getId())
                ->order('mission.timestamp');*/
        $this->template->missions_in_progress = $this->missionRepository->findAll()
                ->where('mission.state_id = ? OR mission.state_id = ?', 2, 3)
                ->where('guild.guildmaster.id', $this->user->getId())
                ->order('mission.timestamp');
        $this->template->bosses = $this->bossRepository->findAll();
    }
    
    public function renderNew() {
        $this->template->_form = $this['newGuildMissionForm'];
    }

    public function renderKill($id) {
        $this->template->mission = $this->missionRepository->findAll()->where('id', $id)->fetch();
        $this->missionId = $this->template->mission->id;
    }
    
    public function renderDetail($id) {
        $this->template->mission = $this->missionRepository->findAll()->where('id', $id)->fetch();
        $this->template->bosses = $this->bossRepository->findAll();
        $this->template->hunts = $this->searchedbossesRepository->findAll()
                ->where('mission_id', $id)
                ->where('chosen', 1);
    }
    
}