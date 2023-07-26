{literal}
    if (cc.acceptedCategory('komfort')) {
        _mtm.push({
            'event': 'consent_komfort',
            'consent_komfort': 'active'
        });
        dataLayer.push({
            'event': 'consent_komfort',
            'consent_komfort': 'active'
        });
    } else {
        _mtm.push({
            'event': 'consent_komfort',
            'consent_komfort': 'denied'
        });
        dataLayer.push({
            'event': 'consent_komfort',
            'consent_komfort': 'denied'
        });
    }
{/literal}

{* Gutschein  START *}
{if {config name='wsc_Cookie_Gutschein'}}
{literal}
    <script type="text/plain" data-category="komfort" data-service="partner_gutschein">
            _mtm.push({
                'event': 'consent_gutschein',
                'consent_gutschein': 'active'
            });
            dataLayer.push({
                'event': 'consent_gutschein',
                'consent_gutschein': 'active'
            });
            console.log('Consent Gutschein active')
        </script>
    <script type="text/plain" data-category="komfort" data-service="!partner_gutschein">
            _mtm.push({
                'event': 'consent_gutschein',
                'consent_gutschein': 'denied'
            });
            dataLayer.push({
                'event': 'consent_gutschein',
                'consent_gutschein': 'denied'
            });
            console.log('Consent Gutschein disabled')
        </script>
{/literal}
{/if}
{* Gutschein ENDE *}

{* LiveChat  START *}
{if {config name='wsc_Cookie_Zammad'}}
{literal}
    <script type="text/plain" data-category="komfort" data-service="live_chat">
            _mtm.push({
                'event': 'consent_livechat',
                'consent_livechat': 'active'
            });
            dataLayer.push({
                'event': 'consent_livechat',
                'consent_livechat': 'active'
            });
            console.log('Consent LiveChat active')
        </script>
    <script type="text/plain" data-category="komfort" data-service="!live_chat">
            _mtm.push({
                'event': 'consent_livechat',
                'consent_livechat': 'denied'
            });
            dataLayer.push({
                'event': 'consent_livechat',
                'consent_livechat': 'denied'
            });
            console.log('Consent LiveChat disabled')
        </script>
{/literal}
{/if}
{* LiveChat ENDE *}

{* Mautic Newsletter  START *}
{if {config name='wsc_Cookie_Mautic'}}
{literal}
    <script type="text/plain" data-category="komfort" data-service="mautic">
            _mtm.push({
                'event': 'consent_mautic',
                'consent_mautic': 'active'
            });
            dataLayer.push({
                'event': 'consent_mautic',
                'consent_mautic': 'active'
            });
            console.log('Consent Mautic Newsletter active')
        </script>
    <script type="text/plain" data-category="komfort" data-service="!mautic">
            _mtm.push({
                'event': 'consent_livechat',
                'consent_livechat': 'denied'
            });
            dataLayer.push({
                'event': 'consent_livechat',
                'consent_livechat': 'denied'
            });
            console.log('Consent Mautic Newsletter disabled')
        </script>
{/literal}
{/if}
{* Mautic Newsletter ENDE *}

{* Matomo START *}
{if {config name='wsc_Cookie_Matomo'}}
    {literal}
        <script type="text/plain" data-category="analytics" data-service="!matomo_analytics">
            _mtm.push({
                'event': 'consent_matomo',
                'consent_matomo': 'denied'
            });
            console.log('Consent Matomo Analytics disabled')
        </script>
    {/literal}
{/if}
{* Matomo ENDE *}

{* Google  START *}
{if {config name='wsc_Cookie_Google'}}
    {literal}
        <script type="text/plain" data-category="analytics" data-service="!google_analytics">
            dataLayer.push({
                'event': 'consent_google',
                'consent_google': 'denied'
            });
            console.log('Consent Google Analytics disabled')
        </script>
    {/literal}
{/if}
{* Google ENDE *}

{* OpenWebAnalytics  START *}
{if {config name='wsc_Cookie_OpenWebAnalytics'}}
{literal}
    <script type="text/plain" data-category="analytics" data-service="openwebanalytics_analytics">
            _mtm.push({
                'event': 'openwebanalytics_analytics',
                'openwebanalytics_analytics': 'active'
            });
            dataLayer.push({
                'event': 'openwebanalytics_analytics',
                'openwebanalytics_analytics': 'active'
            });
            console.log('Consent OpenWebAnalytics active')
        </script>
    <script type="text/plain" data-category="analytics" data-service="!openwebanalytics_analytics">
            _mtm.push({
                'event': 'openwebanalytics_analytics',
                'openwebanalytics_analytics': 'denied'
            });
            dataLayer.push({
                'event': 'openwebanalytics_analytics',
                'openwebanalytics_analytics': 'denied'
            });
            console.log('Consent OpenWebAnalytics disabled')
        </script>
{/literal}
{/if}
{* OpenWebAnalytics ENDE *}

{* Youtube  START *}
{if {config name='wsc_Cookie_Youtube'}}
{literal}
    <script type="text/plain" data-category="analytics" data-service="youtube_targeting">
            _mtm.push({
                'event': 'consent_youtube',
                'consent_youtube': 'active'
            });
            dataLayer.push({
                'event': 'consent_youtube',
                'consent_youtube': 'active'
            });
            console.log('Consent Youtube active')
        </script>
    <script type="text/plain" data-category="analytics" data-service="!youtube_targeting">
            _mtm.push({
                'event': 'consent_youtube',
                'consent_youtube': 'denied'
            });
            dataLayer.push({
                'event': 'consent_youtube',
                'consent_youtube': 'denied'
            });
            console.log('Consent Youtube disabled')
        </script>
{/literal}
{/if}
{* Youtube ENDE *}


{* Facebook  START *}
{if {config name='wsc_Cookie_Facebook'}}
{literal}
    <script type="text/plain" data-category="socialmedia" data-service="facebook_targeting">
            _mtm.push({
                'event': 'consent_facebook',
                'consent_facebook': 'active'
            });
            dataLayer.push({
                'event': 'consent_facebook',
                'consent_facebook': 'active'
            });
            console.log('Consent Facebook active')
        </script>
    <script type="text/plain" data-category="socialmedia" data-service="!facebook_targeting">
            _mtm.push({
                'event': 'consent_facebook',
                'consent_facebook': 'denied'
            });
            dataLayer.push({
                'event': 'consent_facebook',
                'consent_facebook': 'denied'
            });
            console.log('Consent Facebook disabled')
        </script>
{/literal}
{/if}
{* Facebook ENDE *}

{* Instagram  START *}
{if {config name='wsc_Cookie_Instagram'}}
{literal}
    <script type="text/plain" data-category="socialmedia" data-service="facebook_targeting">
            _mtm.push({
                'event': 'consent_instagram',
                'consent_instagram': 'active'
            });
            dataLayer.push({
                'event': 'consent_instagram',
                'consent_instagram': 'active'
            });
            console.log('Consent Instagram active')
        </script>
    <script type="text/plain" data-category="socialmedia" data-service="!facebook_targeting">
            _mtm.push({
                'event': 'consent_instagram',
                'consent_instagram': 'denied'
            });
            dataLayer.push({
                'event': 'consent_instagram',
                'consent_instagram': 'denied'
            });
            console.log('Consent Instagram disabled')
        </script>
{/literal}
{/if}
{* Instagram ENDE *}

{* Pinterest  START *}
{if {config name='wsc_Cookie_Pinterest'}}
{literal}
    <script type="text/plain" data-category="socialmedia" data-service="pinterest_targeting">
            _mtm.push({
                'event': 'consent_pinterest',
                'consent_pinterest': 'active'
            });
            dataLayer.push({
                'event': 'consent_pinterest',
                'consent_pinterest': 'active'
            });
            console.log('Consent Pinterest active')
        </script>
    <script type="text/plain" data-category="socialmedia" data-service="!pinterest_targeting">
            _mtm.push({
                'event': 'consent_pinterest',
                'consent_pinterest': 'denied'
            });
            dataLayer.push({
                'event': 'consent_pinterest',
                'consent_pinterest': 'denied'
            });
            console.log('Consent Pinterest disabled')
        </script>
{/literal}
{/if}
{* Pinterest ENDE *}

{* Google AdWords  START *}
{if {config name='wsc_Cookie_GoogleADs'}}
{literal}
    <script type="text/plain" data-category="werbung" data-service="adwords_targeting">
            _mtm.push({
                'event': 'consent_adwords',
                'consent_adwords': 'active'
            });
            dataLayer.push({
                'event': 'consent_adwords',
                'consent_adwords': 'active'
            });
            console.log('Consent Google AdWords active')
        </script>
    <script type="text/plain" data-category="werbung" data-service="!adwords_targeting">
            _mtm.push({
                'event': 'consent_adwords',
                'consent_adwords': 'denied'
            });
            dataLayer.push({
                'event': 'consent_adwords',
                'consent_adwords': 'denied'
            });
            console.log('Consent Google AdWords disabled')
        </script>
{/literal}
{/if}
{* Google AdWords ENDE *}

{* Bing  START *}
{if {config name='wsc_Cookie_Bing'}}
    {literal}
        <script type="text/plain" data-category="werbung" data-service="bing_targeting">
            _mtm.push({
                'event': 'consent_bing',
                'consent_bing': 'active'
            });
            dataLayer.push({
                'event': 'consent_bing',
                'consent_bing': 'active'
            });
            console.log('Consent Bing active')
        </script>
        <script type="text/plain" data-category="werbung" data-service="!bing_targeting">
            _mtm.push({
                'event': 'consent_bing',
                'consent_bing': 'denied'
            });
            dataLayer.push({
                'event': 'consent_bing',
                'consent_bing': 'denied'
            });
            console.log('Consent Bing disabled')
        </script>
    {/literal}
{/if}
{* Bing ENDE *}

{* Clarity  START *}
{if {config name='wsc_Cookie_Clarity'}}
    {literal}
        <script type="text/plain" data-category="usability" data-service="clarity_usability">
            _mtm.push({
                'event': 'consent_clarity',
                'consent_clarity': 'active'
            });
            dataLayer.push({
                'event': 'consent_clarity',
                'consent_clarity': 'active'
            });
            console.log('Consent Clarity active')
        </script>
        <script type="text/plain" data-category="usability" data-service="!clarity_usability">
            _mtm.push({
                'event': 'consent_clarity',
                'consent_clarity': 'denied'
            });
            dataLayer.push({
                'event': 'consent_clarity',
                'consent_clarity': 'denied'
            });
            console.log('Consent Clarity disabled')
        </script>
    {/literal}
{/if}
{* Clarity ENDE *}

{* Hotjar  START *}
{if {config name='wsc_Cookie_Hotjar'}}
    {literal}
        <script type="text/plain" data-category="usability" data-service="clarity_usability">
            _mtm.push({
                'event': 'consent_hotjar',
                'consent_hotjar': 'active'
            });
            dataLayer.push({
                'event': 'consent_hotjar',
                'consent_hotjar': 'active'
            });
            console.log('Consent Hotjar active')
        </script>
        <script type="text/plain" data-category="usability" data-service="!clarity_usability">
            _mtm.push({
                'event': 'consent_hotjar',
                'consent_hotjar': 'denied'
            });
            dataLayer.push({
                'event': 'consent_hotjar',
                'consent_hotjar': 'denied'
            });
            console.log('Consent Hotjar disabled')
        </script>
    {/literal}
{/if}
{* Hotjar ENDE *}