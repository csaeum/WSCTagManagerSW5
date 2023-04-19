{extends file="parent:frontend/index/index.tpl"}

{block name='frontend_index_after_body'}

{**
    cookie_show_button {config name='cookie_show_button'} == Cokkie Hinweis = Ja == 1<br />
    cookie_show_button {config name='cookie_show_button'} == Cokkie Hinweis = NEIN == 0<br />
    <br />
    cookie_note_mode: {config name='cookie_note_mode'} == 1 Technisch Notwendige Cookies erlauben<br />
    cookie_note_mode: {config name='cookie_note_mode'} == 2 Cookies nach erlaubnis setzen<br />
    cookie_note_mode: {config name='cookie_note_mode'} == 0 Nur Hinweis anzeigen
**}

    {assign var=wscCookie value=$smarty.cookies.cookiePreferences|json_decode:1}

    {if $wscCookie.groups.statistics.cookies.wsc_Cookie_Matomo.active === true || ( {config name='cookie_show_button'} != 1 AND {config name='cookie_note_mode'} == 1 ) || ( {config name='wscTagManagerConsentManagerOrestbida'} == 1 ) }

        {if {config name='wscTagManagerMatomo'}}

            {if {config name='wscTagManagerMatomoPage'}}
            {literal}
                <!-- Matomo (noscript) -->
                <noscript>
                <p>
                <img src="{/literal}{config name='wscTagManagerMatomoURL'}{literal}/matomo.php?idsite={/literal}{config name='wscTagManagerMatomoPageID'}{literal}&amp;rec=1" style="border:0;" alt="" />
                </p>
                </noscript>
                <!-- End Matomo Code (noscript) -->
            {/literal}
            {/if}

        {/if}

    {/if}

    {if $wscCookie.groups.statistics.cookies.wsc_Cookie_Google.active === true || ( {config name='cookie_show_button'} != 1 AND {config name='cookie_note_mode'} == 1 ) || ( {config name='wscTagManagerConsentManagerOrestbida'} == 1 ) }

        {if {config name='wscTagManagerGoogle'}}

            {if {config name='wscTagManagerGoogleTM'}}
            {literal}
                <!-- Google Tag Manager (noscript) -->
                <noscript>
                <iframe src="https://www.googletagmanager.com/ns.html?id={/literal}{config name='wscTagManagerGoogleTagID'}{literal}" height="0" width="0" style="display:none;visibility:hidden"></iframe>
                </noscript>
                <!-- End Google Tag Manager (noscript) -->
            {/literal}
            {/if}

        {/if}

    {/if}

    {if {config name='wscTagManager_Cookie_Pruefung'} === '1' AND {config name='wscTagManagerConsentManagerOrestbida'} != '1'}

        {if $smarty.cookies.wsc_Cookie_Vergleichswert === ''}

        {literal}
            <script>
                var date = new Date();
                date.setTime(date.getTime() + 10 * 24 * 60 * 60 * 1000);
                var expires = date.toUTCString();
                // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
                document.cookie = "wsc_Cookie_Vergleichswert={/literal}{config name='wsc_Cookie_Vergleichswert'}{literal}; expires="{/literal} + expires + {literal}"; path=/";
                console.log("wsc_Cookie_Vergleichswert gesetzt");
                console.log(document.cookie);

                location.reload(true);
            </script>
        {/literal}

        {/if}

        {if $smarty.cookies.wsc_Cookie_Vergleichswert != {config name='wsc_Cookie_Vergleichswert'}}

        {literal}
            <script>
                var date = new Date();
                date.setTime(date.getTime() + 30 * 24 * 60 * 60 * 1000);
                var expires = date.toUTCString();
                // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
                document.cookie = "wsc_Cookie_Vergleichswert={/literal}{config name='wsc_Cookie_Vergleichswert'}{literal}; expires="{/literal} + expires + {literal}"; path=/";
                console.log("wsc_Cookie_Vergleichswert neu gesetzt");
                console.log(document.cookie);

                var date = new Date();
                date.setTime(date.getTime() - 30 * 24 * 60 * 60 * 1000);
                var expires = date.toUTCString();
                // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
                document.cookie = "cookiePreferences=; expires="{/literal} + expires + {literal}"; path=/";
                console.log("Cookie cookiePreferences zurückgesetzt");
                console.log(document.cookie);

                location.reload(true);
            </script>
        {/literal}

        {/if}

    {/if}

{/block}

{block name="frontend_index_javascript_async_ready"}

    {$smarty.block.parent}

    {if {config name='wscTagManagerConsentManagerOrestbida'} === '1'}
        <script defer
                src="/custom/plugins/WSCTagManagerSW5/Resources/views/frontend/orestbida-cookieconsent/cookieconsent.js"></script>
        <script>
            {include file="frontend/orestbida-cookieconsent/cookieconsent-init.js.tpl"}
        </script>
    {/if}

    {* DataLayer aktiv *}
    {if {config name='wscTagManagerDataLayer'}}

        {* DataLayer Matomo *}
        {if {config name='wscTagManagerDataLayerMatomo'}}

            {* ANFANG des Kopfes *}
        {literal}
            <script>
                setTimeout(function () {
                    window._mtm = window._mtm || [];
                    window._mtm.push({ecommerce: null});
                    window._mtm.push({
                        {/literal}
                        {* ENDE des Kopfes *}

                        {include file="frontend/index/DataLayer.tpl"}

                        {* ANFANG des Fußes *}
                        {literal}
                    });
                }, {/literal}{config name='wscTagManagerDataLayerTime'}{literal});
            </script>
        {/literal}
            {* ENDE des Fußes *}

        {/if}

        {* DataLayer Google *}
        {if {config name='wscTagManagerDataLayerGoogle'}}

            {* ANFANG des Kopfes *}
        {literal}
            <script>
                setTimeout(function () {
                    window.dataLayer = window.dataLayer || [];
                    window.dataLayer.push({ecommerce: null});
                    window.dataLayer.push({
                        {/literal}
                        {* ENDE des Kopfes *}

                        {include file="frontend/index/DataLayer.tpl"}

                        {* ANFANG des Fußes *}
                        {literal}
                    });
                }, {/literal}{config name='wscTagManagerDataLayerTime'}{literal});
            </script>
        {/literal}
            {* ENDE des Fußes *}

        {/if}

    {/if}

{/block}