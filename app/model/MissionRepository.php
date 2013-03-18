<?php
namespace Model;
use Nette;

class MissionRepository extends Repository
{
    public function createMission($timestamp, $guild, $tier, $state)
    {
        return $this->getTable()->insert(array(
            'timestamp' => $timestamp,
            'guild_id' => $guild,
            'tier_id' => $tier,
            'state_id' => $state
        ));
    }
    
    public function start($id)
    {
        return $this->getTable()->where('id', $id)->update(array(
            'state_id' => 2
        ));
    }
    
    public function cancel($id)
    {
        return $this->getTable()->where('id', $id)->update(array(
            'state_id' => 5
        ));
    }
    
    public function remove($id)
    {
        return $this->getTable()->where('id', $id)->delete();
    }
    
    public function finish($id)
    {
        return $this->getTable()->where('id', $id)->update(array(
            'state_id' => 4
        ));
    }
    
    public function setKillBossesState($missionId)
    {
        return $this->getTable()->where("id", $missionId)
                ->update(array(
            'state_id' => 3,
        ));
    }
}