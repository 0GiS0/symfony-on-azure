<?php
// src/Controller/HelloAzureController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HelloAzureController
{
    /**
     * @Route("/hello/azure")
     */
    public function hello()
    {
        return new Response(
            '<html><body><h1>Hello Symfony from Microsoft Azure</h1></body></html>'
        );
    }
}