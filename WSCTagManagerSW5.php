<?php

namespace WSCTagManagerSW5;

use Enlight_Event_EventArgs;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Shopware\Bundle\CookieBundle\CookieCollection;
use Shopware\Bundle\CookieBundle\Structs\CookieGroupStruct;
use Shopware\Bundle\CookieBundle\Structs\CookieStruct;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\DeactivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Shopware\Components\Plugin\Context\UpdateContext;
use Shopware\Components\Plugin;

class WSCTagManagerSW5 extends Plugin
{

    public function install(InstallContext $context) {
		$context->scheduleClearCache(InstallContext::CACHE_LIST_FRONTEND);
	}

    public function update(UpdateContext $context) {
        $context->scheduleClearCache(UpdateContext::CACHE_LIST_ALL);
    }

    public function activate(ActivateContext $context) {
        $context->scheduleClearCache(ActivateContext::CACHE_LIST_ALL);
    }

    public function deactivate(DeactivateContext $context) {
        $context->scheduleClearCache(DeactivateContext::CACHE_LIST_ALL);
    }

    public static function getSubscribedEvents(): array
    {
        return [
            'Enlight_Controller_Action_PostDispatch_Frontend' => 'onFrontend',
            'CookieCollector_Collect_Cookies' => 'addComfortCookie',
        ];
    }
     
    public function onFrontend(\Enlight_Event_EventArgs $args) {
        $controller = $args->getSubject();
        $view = $controller->View();
        $view->addTemplateDir($this->getPath() . '/Resources/views');
    }

    public function addComfortCookie(): CookieCollection
    {
        $collection = new CookieCollection();
        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Bing')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Bing',
                '/^wsc_Cookie_Bing$/',
                'Bing (Microsoft Corporation Advertising)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Clarity')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Clarity',
                '/^wsc_Cookie_Clarity$/',
                'Clarity (Microsoft Corporation Clarity)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Facebook')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Facebook',
                '/^wsc_Cookie_Facebook$/',
                'Facebook (Meta Platforms Ireland Limited)',
                CookieGroupStruct::STATISTICS
            ));
        }
        
        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Google')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Google',
                '/^wsc_Cookie_Google$/',
                'Analytics / Tag-Manager (Google Ireland Limited)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_GoogleADs')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_GoogleADs',
                '/^wsc_Cookie_GoogleADs$/',
                'AdWords (Google Ireland Limited)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Hotjar')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Hotjar',
                '/^wsc_Cookie_Hotjar$/',
                'Hotjar Limited',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Instagram')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Instagram',
                '/^wsc_Cookie_Instagram$/',
                'Instagram (Meta Platforms Ireland Limited)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Matomo')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Matomo',
                '/^wsc_Cookie_Matomo$/',
                'Matomo',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Mautic')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Mautic',
                '/^wsc_Cookie_Mautic$/',
                'Mautic',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Pinterest')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Pinterest',
                '/^wsc_Cookie_Pinterest$/',
                'Pinterest Inc.',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Youtube')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Youtube',
                '/^wsc_Cookie_Youtube$/',
                'Youtube (Google Ireland Limited)',
                CookieGroupStruct::STATISTICS
            ));
        }

        if(Shopware()->Config()->getByNamespace('WSCTagManagerSW5', 'wsc_Cookie_Zammad')) {
            $collection->add(new CookieStruct(
                'wsc_Cookie_Zammad',
                '/^wsc_Cookie_Zammad$/',
                'Zammad',
                CookieGroupStruct::STATISTICS
            ));
        }

        return $collection;
    }

}