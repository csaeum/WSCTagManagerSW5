{* import { run } from 'https://cdn.jsdelivr.net/gh/orestbida/cookieconsent@v3.0.0-rc.16/dist/cookieconsent.esm.js'; *}
{literal}
    import 'https://cdn.jsdelivr.net/gh/orestbida/cookieconsent@v3.0.0-rc.16/dist/cookieconsent.umd.js';
{/literal}

{if {config name='wscTagManagerConsentManagerOrestbida-Misc-DarkMode'}}{literal}document.documentElement.classList.add('cc--darkmode');{/literal}{/if}
{* https://cookieconsent.orestbida.com/advanced/manage-scripts.html *}
{literal}
    window.cc = CookieConsent;
    cc.run({
        guiOptions: {
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-guioptions.tpl"}
            {literal}
        },
        onModalReady: ({ modalName }) => {
            console.log("onModalReady ready:", modalName);
        },
        onModalShow: ({ modalName }) => {
            console.log("onModalShow visible:", modalName);
        },
        onModalHide: ({ modalName }) => {
            console.log("onModalHide hidden:", modalName);
        },
        onFirstConsent: ({cookie}) => {
            console.log("onFirstConsent fired", cookie);
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            {literal}
        },
        onConsent: ({cookie}) => {
            console.log("onConsent fired!", cookie);
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            {literal}
        },
        onAccept: ({cookie}) => {
            console.log("onAccept fired!", cookie);
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            {literal}
        },
        onChange: ({cookie}) => {
            console.log("onChange fired!", changedCategories, changedServices);
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            {literal}
        },
        categories: {
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-categories.tpl"}
            {literal}
        },
        language: {
            {/literal}
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-languages.tpl"}
            {literal}
            }
        },
        disablePageInteraction: {/literal}{if {config name='wscTagManagerConsentManagerOrestbida-Misc-DisablePageInteraction'}}true{else}false{/if}{literal}
    });
{/literal}