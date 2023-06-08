{literal}
    if (cc.allowedCategory('technisch')) {
        _mtm.push({
            'event': 'consent_technisch',
            'consent_technisch': 'active'
        });
        dataLayer.push({
            'event': 'consent_technisch',
            'consent_technisch': 'active'
        });
    } else {
        _mtm.push({
            'event': 'consent_technisch',
            'consent_technisch': 'denied'
        });
        dataLayer.push({
            'event': 'consent_technisch',
            'consent_technisch': 'denied'
        });
    }

    if (cc.allowedCategory('komfort')) {
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
{* Matomo START *}
{if {config name='wsc_Cookie_Matomo'}}
{literal}

    if (cc.allowedCategory('matomo_analytics')) {
        _mtm.push({
            'event': 'consent_matomo',
            'consent_matomo': 'active'
        });
        dataLayer.push({
            'event': 'consent_matomo',
            'consent_matomo': 'active'
        });
        window._mtm = window._mtm || [];
        window._mtm.push({ecommerce: null});
        window._mtm.push({
        {/literal}
            {include file="frontend/index/DataLayer.tpl"}
        {literal}
        });
    } else {
        _mtm.push({
            'event': 'consent_matomo',
            'consent_matomo': 'denied'
        });
        dataLayer.push({
            'event': 'consent_matomo',
            'consent_matomo': 'denied'
        });
    }

{/literal}
{/if}
{* Matomo ENDE *}

{* Google  START *}
{if {config name='wsc_Cookie_Google'}}
{literal}

    if (cc.allowedCategory('google_analytics')) {
        _mtm.push({
            'event': 'consent_google',
            'consent_google': 'active'
        });
        dataLayer.push({
            'event': 'consent_google',
            'consent_google': 'active'
        });
        window.dataLayer = window.dataLayer || [];
        window.dataLayer.push({ecommerce: null});
        window.dataLayer.push({
        {/literal}
            {include file="frontend/index/DataLayer.tpl"}
        {literal}
        });
    } else {
        _mtm.push({
            'event': 'consent_google',
            'consent_google': 'denied'
        });
        dataLayer.push({
            'event': 'consent_google',
            'consent_google': 'denied'
        });
    }

{/literal}
{/if}
{* Google ENDE *}

{* Bing  START *}
{if {config name='wsc_Cookie_Bing'}}
{literal}

if (cc.allowedCategory('bing_targeting')) {
    _mtm.push({
        'event': 'consent_bing',
        'consent_bing': 'active'
    });
    dataLayer.push({
        'event': 'consent_bing',
        'consent_bing': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_bing',
        'consent_bing': 'denied'
    });
    dataLayer.push({
        'event': 'consent_bing',
        'consent_bing': 'denied'
    });
}

{/literal}
{/if}
{* Bing ENDE *}

{* Clarity  START *}
{if {config name='wsc_Cookie_Clarity'}}
{literal}

if (cc.allowedCategory('clarity_usability')) {
    _mtm.push({
        'event': 'consent_clarity',
        'consent_clarity': 'active'
    });
    dataLayer.push({
        'event': 'consent_clarity',
        'consent_clarity': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_clarity',
        'consent_clarity': 'denied'
    });
    dataLayer.push({
        'event': 'consent_clarity',
        'consent_clarity': 'denied'
    });
}

{/literal}
{/if}
{* Clarity ENDE *}

{* Facebook  START *}
{if {config name='wsc_Cookie_Facebook'}}
{literal}

if (cc.allowedCategory('facebook_targeting')) {
    _mtm.push({
        'event': 'consent_facebook',
        'consent_facebook': 'active'
    });
    dataLayer.push({
        'event': 'consent_facebook',
        'consent_facebook': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_facebook',
        'consent_facebook': 'denied'
    });
    dataLayer.push({
        'event': 'consent_facebook',
        'consent_facebook': 'denied'
    });
}

{/literal}
{/if}
{* Facebook ENDE *}

{* Google AdWords  START *}
{if {config name='wsc_Cookie_Google'}}
{literal}

if (cc.allowedCategory('adwords_targeting')) {
    _mtm.push({
        'event': 'consent_adwords',
        'consent_adwords': 'active'
    });
    dataLayer.push({
        'event': 'consent_adwords',
        'consent_adwords': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_adwords',
        'consent_adwords': 'denied'
    });
    dataLayer.push({
        'event': 'consent_adwords',
        'consent_adwords': 'denied'
    });
}

{/literal}
{/if}
{* Google AdWords ENDE *}

{* Gutschein  START *}
{if {config name='wsc_Cookie_Gutschein'}}
{literal}

if (cc.allowedCategory('partner_gutschein')) {
    _mtm.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'active'
    });
    dataLayer.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'denied'
    });
    dataLayer.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'denied'
    });
}

{/literal}
{/if}
{* Gutschein ENDE *}

{* Hotjar  START *}
{if {config name='wsc_Cookie_Hotjar'}}
{literal}

if (cc.allowedCategory('hotjar_usability')) {
    _mtm.push({
        'event': 'consent_hotjar',
        'consent_hotjar': 'active'
    });
    dataLayer.push({
        'event': 'consent_hotjar',
        'consent_hotjar': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_hotjar',
        'consent_hotjar': 'denied'
    });
    dataLayer.push({
        'event': 'consent_hotjar',
        'consent_hotjar': 'denied'
    });
}

{/literal}
{/if}
{* Hotjar ENDE *}

{* Instagram  START *}
{if {config name='wsc_Cookie_Instagram'}}
{literal}

if (cc.allowedCategory('instagram_targeting')) {
    _mtm.push({
        'event': 'consent_instagram',
        'consent_instagram': 'active'
    });
    dataLayer.push({
        'event': 'consent_instagram',
        'consent_instagram': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_instagram',
        'consent_instagram': 'denied'
    });
    dataLayer.push({
        'event': 'consent_instagram',
        'consent_instagram': 'denied'
    });
}

{/literal}
{/if}
{* Instagram ENDE *}

{* OpenWebAnalytics  START *}
{if {config name='wsc_Cookie_OpenWebAnalytics'}}
{literal}

if (cc.allowedCategory('openwebanalytics_analytics')) {
    _mtm.push({
        'event': 'openwebanalytics_analytics',
        'consent_instagram': 'active'
    });
    dataLayer.push({
        'event': 'openwebanalytics_analytics',
        'consent_instagram': 'active'
    });
} else {
    _mtm.push({
        'event': 'openwebanalytics_analytics',
        'consent_instagram': 'denied'
    });
    dataLayer.push({
        'event': 'openwebanalytics_analytics',
        'consent_instagram': 'denied'
    });
}

{/literal}
{/if}
{* OpenWebAnalytics ENDE *}

{* Pinterest  START *}
{if {config name='wsc_Cookie_Pinterest'}}
{literal}

if (cc.allowedCategory('pinterest_targeting')) {
    _mtm.push({
        'event': 'consent_pinterest',
        'consent_pinterest': 'active'
    });
    dataLayer.push({
        'event': 'consent_pinterest',
        'consent_pinterest': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_pinterest',
        'consent_pinterest': 'denied'
    });
    dataLayer.push({
        'event': 'consent_pinterest',
        'consent_pinterest': 'denied'
    });
}

{/literal}
{/if}
{* Pinterest ENDE *}

{* Youtube  START *}
{if {config name='wsc_Cookie_Youtube'}}
{literal}

if (cc.allowedCategory('youtube_targeting')) {
    _mtm.push({
        'event': 'consent_youtube',
        'consent_youtube': 'active'
    });
    dataLayer.push({
        'event': 'consent_youtube',
        'consent_youtube': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_youtube',
        'consent_youtube': 'denied'
    });
    dataLayer.push({
        'event': 'consent_youtube',
        'consent_youtube': 'denied'
    });
}

{/literal}
{/if}
{* Youtube ENDE *}

{* Zammad  START *}
{if {config name='wsc_Cookie_Zammad'}}
{literal}

if (cc.allowedCategory('partner_gutschein')) {
    _mtm.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'active'
    });
    dataLayer.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'active'
    });
} else {
    _mtm.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'denied'
    });
    dataLayer.push({
        'event': 'consent_gutschein',
        'consent_gutschein': 'denied'
    });
}

{/literal}
{/if}
{* Zammad ENDE *}