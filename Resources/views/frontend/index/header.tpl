{extends file='parent:frontend/index/header.tpl'}

{block name="frontend_index_header_meta_http_tags"}

    {* DataLayer aktiv *}
    {if {config name='wscTagManagerDataLayer'}}

        {* DataLayer Matomo *}
        {if {config name='wscTagManagerDataLayerMatomo'}}

            {* ANFANG des Kopfes *}
            {literal}
                <script>
                    window._mtm = window._mtm || [];
                    window._mtm.push({ ecommerce: null });
                    window._mtm.push({
            {/literal}
            {* ENDE des Kopfes *}

                {include file="frontend/index/DataLayer.tpl"}

            {* ANFANG des Fußes *}
            {literal}
                    });
                </script>
            {/literal}
            {* ENDE des Fußes *}

        {/if}

        {* DataLayer Google *}
        {if {config name='wscTagManagerDataLayerGoogle'}}

            {* ANFANG des Kopfes *}
            {literal}
                <script>
                    window.dataLayer = window.dataLayer || [];
                    window.dataLayer.push({ ecommerce: null });
                    window.dataLayer.push({
            {/literal}
            {* ENDE des Kopfes *}

                {include file="frontend/index/DataLayer.tpl"}

            {* ANFANG des Fußes *}
            {literal}
                    });
                </script>
            {/literal}
            {* ENDE des Fußes *}

        {/if}
    {/if}
    {$smarty.block.parent}
{/block}

{block name="frontend_index_header_javascript_tracking"}
    {* Matomo Skripte *}
    {if {config name='wscTagManagerMatomo'}}

        {if {config name='wscTagManagerMatomoTM'}}
            {literal}
                <!-- Matomo Tag Manager -->
                <script>
                    var _mtm = window._mtm = window._mtm || [];
                    _mtm.push({'mtm.startTime': (new Date().getTime()), 'event': 'mtm.Start'});
                    var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
                    g.async = true;
                    g.src = '{/literal}{config name='wscTagManagerMatomoURL'}{literal}/js/container_{/literal}{config name='wscTagManagerMatomoTMID'}{literal}.js';
                    s.parentNode.insertBefore(g, s);
                </script>
                <!-- End Matomo Tag Manager -->
            {/literal}
        {/if}

        {if {config name='wscTagManagerMatomoPage'}}
            {literal}
                <!-- Matomo -->
                <script>
                    var _paq = window._paq = window._paq || [];
                    /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
                    {/literal}{if {config name='wscTagManagerMatomoPageIDSubdomains'}}{literal}
                    _paq.push(["setCookieDomain", "{/literal}*.{$Shop->getHost()}{literal}"]);
                    {/literal}{/if}{literal}
                    {/literal}{if {config name='wscTagManagerMatomoPageIDnoTracking'}}{literal}
                    _paq.push(["setDoNotTrack", true]);
                    {/literal}{/if}{literal}
                    {/literal}{if {config name='wscTagManagerMatomoPageIDnoCookies'}}{literal}
                    _paq.push(["disableCookies"]);
                    {/literal}{/if}{literal}
                    _paq.push(['trackPageView']);
                    _paq.push(['enableLinkTracking']);
                    (function () {
                        var u = "{/literal}{config name='wscTagManagerMatomoURL'}{literal}/";
                        _paq.push(['setTrackerUrl', u + 'matomo.php']);
                        _paq.push(['setSiteId', '{/literal}{config name='wscTagManagerMatomoPageID'}{literal}']);
                        var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
                        g.async = true;
                        g.src = u + 'matomo.js';
                        s.parentNode.insertBefore(g, s);
                    })();
                </script>
                <!-- End Matomo Code -->
            {/literal}
        {/if}
    {/if}

    {* Google Skripte *}
    {if {config name='wscTagManagerGoogle'}}

        {if {config name='wscTagManagerGoogleTM'}}
        {literal}
            <!-- Google Tag Manager -->
            <script>
                (function (w, d, s, l, i) {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start':
                            new Date().getTime(), event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', '{/literal}{config name='wscTagManagerGoogleTagID'}{literal}');
            </script>
            <!-- End Google Tag Manager -->
        {/literal}
        {/if}

        {if {config name='wscTagManagerGoogleA4'}}
        {literal}
            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id={/literal}{config name='wscTagManagerGoogleA4ID'}{literal}"></script>
            <script>
                window.dataLayer = window.dataLayer || [];

                function gtag() {
                    dataLayer.push(arguments);
                }

                gtag('js', new Date());

                gtag('config', '{/literal}{config name='wscTagManagerGoogleA4ID'}{literal}');
            </script>
        {/literal}
        {/if}

        {if {config name='wscTagManagerGoogleUA'}}
        {literal}
            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id={/literal}{config name='wscTagManagerGoogleUAID'}{literal}"></script>
            <script>
                window.dataLayer = window.dataLayer || [];

                function gtag() {
                    dataLayer.push(arguments);
                }

                gtag('js', new Date());

                gtag('config', '{/literal}{config name='wscTagManagerGoogleUAID'}{literal}'{/literal}{if {config name='wscTagManagerGoogleAnonymizeIP'}}{literal}, {'anonymize_ip': true}{/literal}{/if}{literal});
            </script>
        {/literal}
        {/if}
    {/if}
    {$smarty.block.parent}
{/block}