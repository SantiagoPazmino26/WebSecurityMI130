<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 6/5/18
 * Time: 5:03 PM
 */

namespace WebShopBundle\Security;

use Symfony\Component\Security\Core\Encoder\BasePasswordEncoder;
use Symfony\Component\Security\Core\Exception\BadCredentialsException;

class Encoder extends BasePasswordEncoder
{
    private $salt;

    /**
     * Constructor.
     *
     * @param string $salt
     */
    public function __construct($salt)
    {
        $this->salt = $salt;
    }

    /**
     * {@inheritdoc}
     */
    public function encodePassword($raw, $salt)
    {
        if ($this->isPasswordTooLong($raw)) {
            throw new BadCredentialsException('Invalid password.');
        }

        return sha1($this->mergePasswordAndSalt($raw, $salt));
    }

    /**
     * {@inheritdoc}
     */
    public function isPasswordValid($encoded, $raw, $salt)
    {

        if ($this->isPasswordTooLong($raw)) {
            return false;
        }

        try {
            $pass2 = $this->encodePassword($raw, $salt);
        } catch (BadCredentialsException $e) {
            return false;
        }


        return $this->comparePasswords($encoded, $pass2);
    }

    /**
     * Merges a password and a salt.
     *
     * @param string $password the password to be used
     * @param string $salt     the salt to be used
     *
     * @return string a merged password and salt
     *
     * @throws \InvalidArgumentException
     */
    protected function mergePasswordAndSalt($password, $salt)
    {
        if (empty($salt)) {
            $salt = $this->salt;
        }

        return $password.$salt;
    }
}