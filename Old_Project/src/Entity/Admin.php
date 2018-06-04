<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AdminRepository")
 */
class Admin
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=24)
     */
    private $username;

    /**
     * @ORM\Column(type="string", length=24)
     */
    private $password;

    /**
     * @ORM\Column(type="datetime")
     */
    private $last_log_date;

    public function getId()
    {
        return $this->id;
    }

    public function getUsername(): ?string
    {
        return $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function getLastLogDate(): ?\DateTimeInterface
    {
        return $this->last_log_date;
    }

    public function setLastLogDate(\DateTimeInterface $last_log_date): self
    {
        $this->last_log_date = $last_log_date;

        return $this;
    }
}
