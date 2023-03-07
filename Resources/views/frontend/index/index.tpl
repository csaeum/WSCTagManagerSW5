{extends file="parent:frontend/index/index.tpl"}

{assign var="$smarty.cookies.cookiePreferences" value=","|explode:$string}

{block name='frontend_index_after_body'}

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
    <hr/>
    {var_dump($smarty.cookies.cookiePreferences)}
    <hr/>
    <ul>
        <li>VAR DUMP: {var_dump($smarty.cookies)}</li>
        <li>Cookie: {$smarty.cookies.wsc_Cookie_NeuWert}</li>
        <li>Variable: {config name='wsc_Cookie_NeuWert'}</li>
    </ul>
    {if $smarty.cookies.wsc_Cookie_NeuWert == ''}
        <p>IF</p>
        <ul>
            <li>Cookie: {$smarty.cookies.wsc_Cookie_NeuWert}</li>
            <li>Variable: {config name='wsc_Cookie_NeuWert'}</li>
        </ul>
    {literal}
        <script>
            var date = new Date();
            date.setTime(date.getTime() + 10 * 24 * 60 * 60 * 1000);
            var expires = date.toUTCString();
            // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
            document.cookie = "wsc_Cookie_NeuWert={/literal}{config name='wsc_Cookie_NeuWert'}{literal}; expires="{/literal} + expires + {literal}"; path=/";
            console.log("Cookie gesetzt");
            console.log(document.cookie);

            location.reload(true);
        </script>
    {/literal}
    {elseif $smarty.cookies.wsc_Cookie_NeuWert != {config name='wsc_Cookie_NeuWert'}}
        <p>ELSE IF</p
        <ul>
            <li>Cookie: {$smarty.cookies.wsc_Cookie_NeuWert}</li>
            <li>Variable: {config name='wsc_Cookie_NeuWert'}</li>
        </ul>
    {literal}
        <script>
            var date = new Date();
            date.setTime(date.getTime() + 30 * 24 * 60 * 60 * 1000);
            var expires = date.toUTCString();
            // var expires = (new Date(Date.now()+ 86400*1000)).toUTCString();
            document.cookie = "wsc_Cookie_NeuWert={/literal}{config name='wsc_Cookie_NeuWert'}{literal}; expires="{/literal} + expires + {literal}"; path=/";
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
    {elseif $smarty.cookies.wsc_Cookie_NeuWert == {config name='wsc_Cookie_NeuWert'}}
        <p>ELSE</p>
        <ul>
            <li>Cookie: {$smarty.cookies.wsc_Cookie_NeuWert}</li>
            <li>Variable: {config name='wsc_Cookie_NeuWert'}</li>
        </ul>
    {/if}

    {$smarty.block.parent}

    {foreach $cookieGroups as $wscCookies}
        {if $wscCookies.name == "technical"}
            {foreach $wscCookies.cookies as $wscCookiesTech}
                {if $wscCookiesTech.name == "wsc_Cookie_Neu"}
                    <ul>
                        <li>{$wscCookiesTech.name}</li>
                        <li>{$wscCookiesTech|@var_dump}</li>
                    </ul>
                {/if}
                {if $wscCookiesTech.name == "wsc_Cookie_Google"}
                    <ul>
                        <li>{$wscCookiesTech.name}</li>
                        <li>{$wscCookiesTech|@var_dump}</li>
                    </ul>
                {/if}
                {if $wscCookiesTech.name == "wsc_Cookie_Matomo"}
                    <ul>
                        <li>{$wscCookiesTech.name}</li>
                        <li>{$wscCookiesTech|@var_dump}</li>
                    </ul>
                {/if}
            {/foreach}
        {/if}
    {/foreach}

{/block}