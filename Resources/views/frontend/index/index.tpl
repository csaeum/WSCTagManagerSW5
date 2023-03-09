{extends file="parent:frontend/index/index.tpl"}

{block name='frontend_index_after_body'}

    {assign var=wscCookie value=$smarty.cookies.cookiePreferences|json_decode:1}

    {if $wscCookie.groups.statistics.cookies.wsc_Cookie_Matomo.active === true}

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

    {if $wscCookie.groups.statistics.cookies.wsc_Cookie_Google.active === true}

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

    {if $smarty.cookies.wsc_Cookie_Vergleichswert === ''}

    {literal}
        <script>
            var date = new Date();
            date.setTime(date.getTime() + 10 * 24 * 60 * 60 * 1000);
            var expires = date.toUTCString();
            // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
            document.cookie = "wsc_Cookie_Vergleichswert={/literal}{config name='wsc_Cookie_Vergleichswert'}{literal}; expires="{/literal} + expires + {literal}"; path=/";
            console.log("Cookie gesetzt");
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
            console.log("Cookie gesetzt");
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

    {$smarty.block.parent}

{/block}