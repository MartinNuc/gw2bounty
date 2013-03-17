<?php
namespace Model;
use Nette;

class BossRepository extends Repository
{

    public function lastSeen($where = NULL)
    {
        return $this->getTable()->select('boss.id, boss.map, boss.name, boss.mapurl, boss.faceurl, boss.descriptionurl, searched_bosses:timestamp AS last_seen');
    }
}