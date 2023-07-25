{if {config name='wscTagManagerConsentManagerOrestbida-Misc-DarkMode'}}{literal}document.documentElement.classList.add('cc--darkmode');{/literal}{/if}

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
            {*
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            *}
            {literal}
        },
        onConsent: ({cookie}) => {
            console.log("onConsent fired!", cookie);
            {/literal}
            {*
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            *}
            {literal}
        },
        onChange: ({cookie, changedCategories, changedPreferences}) => {
            console.log("onChange fired!", changedCategories, changedServices);
            {/literal}
            {*
                {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}
            *}
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