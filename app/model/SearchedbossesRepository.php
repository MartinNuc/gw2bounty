<?php
namespace Model;
use Nette;

class SearchedbossesRepository extends Repository
{
    public function createBossHunt($bossId, $missionId)
    {
        return $this->getTable()->insert(array(
            'mission_id' => $missionId,
            'boss_id' => $bossId
        ));
    }
    
    public function found($huntId, $x, $y)
    {
        return $this->getTable()->where("id", $huntId)
                ->update(array(
            'found' => 1,
            'x' => $x,
            'y' => $y,
            'timestamp' => new \DateTime
        ));
    }
    
    public function respawned($huntId)
    {
        return $this->getTable()->where("id", $huntId)
                ->update(array(
            'found' => 0,
            'x' => NULL,
            'y' => NULL,
            'timestamp' => NULL
        ));
    }
    
    public function setPeople($huntId, $count)
    {
        return $this->getTable()->where("id", $huntId)
                ->update(array(
            'assignedpeople' => $count
        ));
    }
    
    public function markAsTarget($missionId, $bossId)
    {
        return $this->getTable()->where(array("mission_id" => $missionId, 'boss_id' => $bossId))
                ->update(array(
            'chosen' => 1,
        ));
    }

    public function markBossAsDead($huntId)
    {
        return $this->getTable()->where('id', $huntId)
                ->update(array(
            'killed' => 1,
        ));
    }
}