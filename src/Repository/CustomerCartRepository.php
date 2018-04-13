<?php

namespace App\Repository;

use App\Entity\CustomerCart;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method CustomerCart|null find($id, $lockMode = null, $lockVersion = null)
 * @method CustomerCart|null findOneBy(array $criteria, array $orderBy = null)
 * @method CustomerCart[]    findAll()
 * @method CustomerCart[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CustomerCartRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, CustomerCart::class);
    }

//    /**
//     * @return CustomerCart[] Returns an array of CustomerCart objects
//     */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CustomerCart
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
