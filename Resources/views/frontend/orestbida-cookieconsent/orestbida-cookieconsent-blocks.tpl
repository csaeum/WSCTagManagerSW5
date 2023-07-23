{literal}
{
    title: '{/literal}{s name="wscTagManagerSW5/orestbida/settings_model-Blocks-Title"}{/s}{literal}',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/settings_model-Blocks-Description"}{/s}{literal}'
},
{
    title: 'Technisch erforderlich',
    description: 'Technische Cookies',
        toggle: {
            value: 'technisch',
            enabled: true,
            readonly: true
        },
        cookie_table: [
            {
                col1: '^__csrf_token',
                col2: 'www.schicker-mineral.de',
                col3: 'Sitzungsende',
                col4: 'Shopware eigenes Cookie um die Verwendung abzusichern',
                is_regex: true
            },
            {
                col1: 'cookiePreferences-1',
                col2: 'www.schicker-mineral.de',
                col3: '182 Tage',
                col4: 'Shopware eigenes Cookie mit den Einstellungen des CookieBanners von Shopware',
            },
            {
                col1: 'nocache-1',
                col2: 'www.schicker-mineral.de',
                col3: 'Sitzungsende',
                col4: 'Shopware eigenes Cookie ob Cache verwendet wird',
            },
            {
                col1: 'PHPSESSID',
                col2: 'www.schicker-mineral.de',
                col3: 'Sitzungsende',
                col4: 'Shopware eigenes Cookie um den Kunden zu erkennen und abzusichern',
            },
            {
                col1: 'session-1',
                col2: 'www.schicker-mineral.de',
                col3: 'Sitzungsende',
                col4: 'Shopware eigenes Cookie um den Kunden zu erkennen und abzusichern',
            },
            {
                col1: 'x-ua-device',
                col2: 'www.schicker-mineral.de',
                col3: 'Sitzungsende',
                col4: 'Shopware eigenes Cookie welches Gerät der User verwendet',
            }
        ]
},
{
    title: 'Komfort',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'komfort',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '---',
                col2: 'livechat.schicker-mineral.de',
                col3: '---',
                col4: 'Unser eigener Zammad Live-Chat',
            },
            {
                col1: '---',
                col2: 'news.schicker-mineral.de',
                col3: '---',
                col4: 'Unser eigenes Mautic Newsletter Tool',
            }
        ]
},
{/literal}
{* Matomo START *}
{if {config name='wsc_Cookie_Matomo'}}
{literal}
{
    title: 'Matomo Analytics / Tag-Manager',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'matomo_analytics',
            enabled: false,
            readonly: false
        }
},
{/literal}
{/if}
{* Matomo ENDE *}

{* Google  START *}
{if {config name='wsc_Cookie_Google'}}
{literal}
{
    title: 'Google Analytics / Tag-Manager',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'google_analytics',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_ga',
                col2: 'google.com',
                col3: '2 Jahre',
                col4: '---',
                is_regex: true
            },
            {
                col1: '_gid',
                col2: 'google.com',
                col3: '1 Tag',
                col4: '---',
            },
            {
                col1: 'SID',
                col2: 'google.com',
                col3: 'Sitzungsende',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Google ENDE *}

{* Bing  START *}
{if {config name='wsc_Cookie_Bing'}}
{literal}
{
    title: 'Bing Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'bing_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_uetsid',
                col2: 'microsoft.com',
                col3: '30 min',
                col4: '---',
                is_regex: true
            },
            {
                col1: 'MUID',
                col2: 'microsoft.com',
                col3: '2 Jahre',
                col4: '---',
            },
            {
                col1: 'MUIDB',
                col2: 'microsoft.com',
                col3: '2 Jahre',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Bing ENDE *}

{* Clarity  START *}
{if {config name='wsc_Cookie_Clarity'}}
{literal}
{
    title: 'Clarity Usability',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'clarity_usability',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_clck',
                col2: 'google.com',
                col3: '1 Jahr',
                col4: '---',
                is_regex: true
            },
            {
                col1: '^_clsk',
                col2: 'google.com',
                col3: '1 Tag',
                col4: '---',
                is_regex: true
            },
            {
                col1: 'CLID',
                col2: 'google.com',
                col3: '1 day',
                col4: '---',
            },
            {
                col1: 'ANONCHK',
                col2: 'google.com',
                col3: '---',
                col4: '---',
            },
            {
                col1: 'MUID',
                col2: 'google.com',
                col3: '1 Jahr',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Clarity ENDE *}

{* Facebook  START *}
{if {config name='wsc_Cookie_Facebook'}}
{literal}
{
    title: 'Facebook Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'facebook_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_fbp',
                col2: '.facebook.com',
                col3: '3 Monate',
                col4: '---',
                is_regex: true
            }
        ]
},
{/literal}
{/if}
{* Facebook ENDE *}

{* Google AdWords  START *}
{if {config name='wsc_Cookie_GoogleADs'}}
{literal}
{
    title: 'AdWords Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'adwords_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^__utm',
                col2: 'google.com',
                col3: '2 years',
                col4: '---',
                is_regex: true
            }
        ]
},
{/literal}
{/if}
{* Google AdWords ENDE *}

{* Gutschein  START *}
{if {config name='wsc_Cookie_Gutschein'}}
{literal}
{
title: 'Sovendus Partnernetzwerk',
description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
toggle: {
value: 'partner_gutschein',
enabled: false,
readonly: false
}
},
{/literal}
{/if}
{* Gutschein ENDE *}

{* Hotjar  START *}
{if {config name='wsc_Cookie_Hotjar'}}
{literal}
{
    title: 'Hotjar Usability',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'hotjar_usability',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_hj',
                col2: 'hotjar.com',
                col3: '1 Jahr',
                col4: '---',
                is_regex: true
            }
        ]
},
{/literal}
{/if}
{* Hotjar ENDE *}

{* Instagram  START *}
{if {config name='wsc_Cookie_Instagram'}}
{literal}
{
    title: 'Instagram Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'instagram_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_ga',
                col2: 'google.com',
                col3: '2 years',
                col4: '---',
                is_regex: true
            },
            {
                col1: '_gid',
                col2: 'google.com',
                col3: '1 day',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Instagram ENDE *}

{* OpenWebAnalytics  START *}
{if {config name='wsc_Cookie_OpenWebAnalytics'}}
{literal}
{
    title: 'OpenWebAnalytics',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
    toggle: {
        value: 'openwebanalytics_analytics',
        enabled: false,
        readonly: false
    },
    cookie_table: [
        {
            col1: '^_ga',
            col2: 'google.com',
            col3: '2 years',
            col4: '---',
            is_regex: true
        },
        {
            col1: '_gid',
            col2: 'google.com',
            col3: '1 day',
            col4: '---',
        }
    ]
},
{/literal}
{/if}
{* OpenWebAnalytics ENDE *}

{* Pinterest  START *}
{if {config name='wsc_Cookie_Pinterest'}}
{literal}
{
    title: 'Pinterest Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'pinterest_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_pin',
                col2: 'google.com',
                col3: '2 years',
                col4: '---',
                is_regex: true
            },
            {
                col1: '_epik',
                col2: 'google.com',
                col3: '1 day',
                col4: '---',
            },
            {
                col1: '_routing_id',
                col2: 'google.com',
                col3: '1 day',
                col4: '---',
            },
            {
                col1: '_derived_epik',
                col2: 'google.com',
                col3: '1 day',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Pinterest ENDE *}

{* Youtube  START *}
{if {config name='wsc_Cookie_Youtube'}}
{literal}
{
    title: 'Youtube Werbe- und Targeting-Cookies',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}',
        toggle: {
            value: 'youtube_targeting',
            enabled: false,
            readonly: false
        },
        cookie_table: [
            {
                col1: '^_ga',
                col2: 'youtube.com',
                col3: '2 years',
                col4: '---',
                is_regex: true
            },
            {
                col1: 'CONSENT',
                col2: 'youtube-nocookie.com',
                col3: '2 Jahre',
                col4: '---',
            }
        ]
},
{/literal}
{/if}
{* Youtube ENDE *}
{literal}
{
    title: '{/literal}{s name="wscTagManagerSW5/orestbida/Title-cookieMoreInfo"}{/s}{literal}',
    description: '{/literal}{s name="wscTagManagerSW5/orestbida/Description-cookieMoreInfo"}{/s}{literal}',
}
{/literal}