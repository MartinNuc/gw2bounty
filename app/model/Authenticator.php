<?php

use Nette\Security,
	Nette\Utils\Strings;

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
                
                if ($username == "" && password != "")
                {
                    // login for guild members
                    $row = $this->database->table('guild')->where('memberpassword', $password)->fetch();
                    if ($row != FALSE && count($row) > 0)
                        return new Security\Identity($row->id, "member");
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
                    return new Security\Identity($row->id, "guildmaster", $row->toArray());
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
