<?php

/**
 * Description of BossSearchPresenter
 *
 * @author mist
 */
class BossSearchPresenter extends BasePresenter {

    private $missionRepository;
    private $bossRepository;
    private $searchedbossesRepository;

    /**
     * (non-phpDoc)
     *
     * @see Nette\Application\Presenter#startup()
     */
    protected function startup() {
        parent::startup();
        $this->missionRepository = $this->context->missionRepository;
        $this->bossRepository = $this->context->bossRepository;
        $this->searchedbossesRepository = $this->context->searchedbossesRepository;
    }

    public function handleRespawned($huntId) {
        $this->searchedbossesRepository->respawned($huntId);
        if (!$this->presenter->isAjax()) {
            $this->presenter->redirect('this');
        } else {
            $this->invalidateControl();
        }
    }

    public function handleFound($huntId, $x, $y) {
        $this->searchedbossesRepository->found($huntId, $x, $y);
        if (!$this->presenter->isAjax()) {
            $this->presenter->redirect('this');
        } else {
            $this->invalidateControl();
        }
    }

    public function handleAssign($huntId) {
        $hunt = $this->searchedbossesRepository->findAll()->where('id', $huntId)->fetch();
        if (isset($hunt->assignedpeople) && $hunt->assignedpeople >= 0)
            $this->searchedbossesRepository->setPeople($huntId, $hunt->assignedpeople + 1);

        if (!$this->presenter->isAjax()) {
            $this->presenter->redirect('this');
        } else {
            $this->invalidateControl();
        }
    }

    public function handleUnAssign($huntId) {
        $hunt = $this->searchedbossesRepository->findAll()->where('id', $huntId)->fetch();
        if (isset($hunt->assignedpeople) && $hunt->assignedpeople > 0)
            $this->searchedbossesRepository->setPeople($huntId, $hunt->assignedpeople - 1);

        if (!$this->presenter->isAjax()) {
            $this->presenter->redirect('this');
        } else {
            $this->invalidateControl();
        }
    }

    public function actionDefault($huntId) {
        
    }

    public function renderDefault($huntId) {
        $this->template->hunt = $this->searchedbossesRepository->findAll()->where('id', $huntId)->fetch();
        $this->template->boss = $this->searchedbossesRepository->findAll()->select('boss.*')->where('searchedbosses.id', $huntId)->fetch();
        $this->template->last_seen = $this->searchedbossesRepository->findAll()
                ->where('boss.id', $this->template->boss->id)
                ->where('found', 1)
                ->order('searchedbosses.timestamp DESC')
                ->limit(1)
                ->fetch();
    }

}