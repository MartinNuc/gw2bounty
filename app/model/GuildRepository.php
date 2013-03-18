<?php
namespace Model;
use Nette;

class GuildRepository extends Repository
{
    public function createGuild($guildname, $server, $guildmasterid)
    {
        return $this->getTable()->insert(array(
            'name' => $guildname,
            'server_id' => $server,
            'guildmaster_id' => $guildmasterid
        ));
    }
    
    public function changeGuildPassword($guildId, $password)
    {
        return $this->getTable()->where('id', $guildId)->update(array(
            'memberpassword' => $password
        ));
    }
    
    
}