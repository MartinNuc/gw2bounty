<?php

use Nette\Application\Routers\RouteList,
    Nette\Application\Routers\Route,
    Nette\DI\Container,
    Nette\Application\Routers\SimpleRouter;


/**
 * Router factory.
 */
class RouterFactory {

    /**
     * @return Nette\Application\IRouter
     */
    public function createRouter() {
        $router = new RouteList();
        $router[] = new Route('index.php', 'Homepage:default', Route::ONE_WAY);
        $router[] = new Route('<presenter>/<action>[/<id>]', 'Homepage:default');
/*
        $container = new Container;
        $router[] = new Route('[<lang ' . $container->translator->routerAccept() . '>/]<presenter>/<action>/[<id>/]', array(
                    'presenter' => 'Homepage',
                    'action' => 'default',
                    'lang' => $container->translator->getDefault()
                ));*/

        return $router;
    }

}
