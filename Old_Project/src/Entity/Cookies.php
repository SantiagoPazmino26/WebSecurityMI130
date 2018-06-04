<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CookiesRepository")
 */
class Cookies
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $cookie_user;

    /**
     * @ORM\Column(type="integer")
     */
    private $id_user;

    /**
     * @ORM\Column(type="boolean")
     */
    private $logged_in;

    /**
     * @ORM\Column(type="datetime")
     */
    private $login_expire;

    public function getId()
    {
        return $this->id;
    }

    public function getCookieUser(): ?string
    {
        return $this->cookie_user;
    }

    public function setCookieUser(string $cookie_user): self
    {
        $this->cookie_user = $cookie_user;

        return $this;
    }

    public function getIdUser(): ?int
    {
        return $this->id_user;
    }

    public function setIdUser(int $id_user): self
    {
        $this->id_user = $id_user;

        return $this;
    }

    public function getLoggedIn(): ?bool
    {
        return $this->logged_in;
    }

    public function setLoggedIn(bool $logged_in): self
    {
        $this->logged_in = $logged_in;

        return $this;
    }

    public function getLoginExpire(): ?\DateTimeInterface
    {
        return $this->login_expire;
    }

    public function setLoginExpire(\DateTimeInterface $login_expire): self
    {
        $this->login_expire = $login_expire;

        return $this;
    }
}
