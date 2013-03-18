<?php

use Nette\Security,
	Nette\Utils\Strings;


/*
CREATE TABLE users (
	id int(11) NOT NULL AUTO_INCREMENT,
	username varchar(50) NOT NULL,
	password char(60) NOT NULL,
	role varchar(20) NOT NULL,
	PRIMARY KEY (id)
);
*/

/**
 * Users authenticator.
 */
class Authenticator extends Nette\Object implements Security\IAuthenticator
{
	/** @var Nette\Database\Connection */
	private $database;



	public function __construct(Nette\Database\Connection $database)
	{
		$this->database = $database;
	}



	/**
	 * Performs an authentication.
	 * @return Nette\Security\Identity
	 * @throws Nette\Security\AuthenticationException
	 */
	public function authenticate(array $credentials)
	{
		list($username, $password) = $credentials;
                
                if ($username == "")
                {
                    // login for guild members
                    $row = $this->database->table('guild')->where('memberpassword', $password)->fetch();
                    if (count($row) > 0)
                        return new Security\Identity($row->id, "member", $row->toArray());
                    else
                        throw new Security\AuthenticationException('The access code is incorrect.', self::IDENTITY_NOT_FOUND);
                }
                else
                {
                    $row = $this->database->table('guildmaster')->where('login', $username)->fetch();

                    if (!$row) {
                            throw new Security\AuthenticationException('The username or password is incorrect.', self::IDENTITY_NOT_FOUND);
                    }

                    if ($row->password !== $this->calculateHash($password, $row->password)) {
                            throw new Security\AuthenticationException('The password or password is incorrect.', self::INVALID_CREDENTIAL);
                    }

                    unset($row->password);
                }
	}

	/**
	 * Computes salted password hash.
	 * @param  string
	 * @return string
	 */
	public static function calculateHash($password, $salt = NULL)
	{
		if ($password === Strings::upper($password)) { // perhaps caps lock is on
			$password = Strings::lower($password);
		}
		return crypt($password, $salt ?: '$2ashlieghslig$gwhegilh07$' . Strings::random(22));
	}

}
