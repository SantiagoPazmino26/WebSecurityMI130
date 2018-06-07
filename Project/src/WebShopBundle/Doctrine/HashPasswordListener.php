<?php

namespace WebShopBundle\Doctrine;

use Doctrine\Common\EventSubscriber;
use Doctrine\ORM\Event\LifecycleEventArgs;
use WebShopBundle\Security\Encoder;
use WebShopBundle\Entity\User;

class HashPasswordListener implements EventSubscriber
{
    private $userPasswordEncoder;

    public function __construct(Encoder $userPasswordEncoder)
    {
        $this->userPasswordEncoder = $userPasswordEncoder;
    }

    public function getSubscribedEvents()
    {
        return [
            "prePersist", "preUpdate"
        ];
    }

    public function prePersist(LifecycleEventArgs $eventArgs)
    {
        $entity = $eventArgs->getEntity();
        if (!$entity instanceof User) {
            return;
        }

        $this->encodePassword($entity);
    }

    public function preUpdate(LifecycleEventArgs $eventArgs)
    {
        $entity = $eventArgs->getEntity();
        if (!$entity instanceof User) {
            return;
        }

        if ($entity->getPlainPassword() === null) {
            return;
        }

        $this->encodePassword($entity);

        $em = $eventArgs->getEntityManager();
        $meta = $em->getClassMetadata(get_class($entity));
        $em->getUnitOfWork()->recomputeSingleEntityChangeSet($meta, $entity);
    }

    public function encodePassword(User $entity)
    {
        $encodedPassword = $this->userPasswordEncoder->encodePassword($entity, $entity->getPlainPassword());
        $entity->setPassword($encodedPassword);
    }
}