{literal}
    if (cc.acceptedCategory('technisch')) {
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
{* Matomo START *}
{if {config name='wsc_Cookie_Matomo'}}
    {literal}

        if (cc.acceptedCategory('matomo_analytics')) {
            window._mtm.push({
                'event': 'consent_matomo',
                'consent_matomo': 'active'
            });
            window.dataLayer.push({
                'event': 'consent_matomo',
                'consent_matomo': 'active'
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

        if (cc.acceptedCategory('google_analytics')) {
            window._mtm.push({
                'event': 'consent_google',
                'consent_google': 'active'
            });
            window.dataLayer.push({
                'event': 'consent_google',
                'consent_google': 'active'
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

if (cc.acceptedCategory('bing_targeting')) {
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

if (cc.acceptedCategory('clarity_usability')) {
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

if (cc.acceptedCategory('facebook_targeting')) {
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
{if {config name='wsc_Cookie_GoogleADs'}}
{literal}

    if (cc.acceptedCategory('adwords_targeting')) {
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

if (cc.acceptedCategory('partner_gutschein')) {
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

if (cc.acceptedCategory('hotjar_usability')) {
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

if (cc.acceptedCategory('instagram_targeting')) {
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

if (cc.acceptedCategory('openwebanalytics_analytics')) {
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

if (cc.acceptedCategory('pinterest_targeting')) {
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

if (cc.acceptedCategory('youtube_targeting')) {
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

if (cc.acceptedCategory('partner_gutschein')) {
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