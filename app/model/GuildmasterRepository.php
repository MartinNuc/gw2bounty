<?php
namespace Model;
use Nette;

class GuildmasterRepository extends Repository
{
    public function createGuildmaster($username, $password, $gamenick)
    {
        return $this->getTable()->insert(array(
            'login' => $username,
            'password' => $password,
            'gamenick' => $gamenick
        ));
    }
}