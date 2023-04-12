var cc = initCookieConsent();

cc.run({
    auto_language: document,
    autoclear_cookies: true,
    autorun: true,
    cookie_expiration: 8,
    cookie_name: 'cc_cookie',
    current_lang: 'de',
    delay: 250,
    force_consent: true,
    hide_from_bots: true,
    mode: 'opt-in',
    page_scripts: true,
    remove_cookie_tables: false,
    revision: 0,
    use_rfc_cookie: false,
    // cookie_necessary_only_expiration: 182   // default: disabled
    // cookie_domain: location.hostname,       // default: current domain
    // cookie_path: '/',                       // default: root
    // cookie_same_site: 'Lax',                // default: 'Lax'

    gui_options: {
        consent_modal: {
            layout: 'box',
            position: 'middle center',
            transition: 'zoom'
        },
        settings_modal: {
            layout: 'box',
            transition: 'zoom'
        }
    },

    onFirstAction: function (user_preferences, cookie) {
        console.log('onFirstAction fired');
        if (cc.allowedCategory('technisch')) {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
        }
        if (cc.allowedCategory('komfort')) {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'denied',
                }
            });
        }
        if (cc.allowedCategory('matomo_analytics')) {
            _mtm.push({
                'event': 'consent_matomo',
                'consent_matomo': 'active'
            });
            dataLayer.push({
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
        if (cc.allowedCategory('google_analytics')) {
            _mtm.push({
                'event': 'consent_google',
                'consent_google': 'active'
            });
            dataLayer.push({
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
    },

    onAccept: function (cookie) {
        console.log('onAccept fired!')
        if (cc.allowedCategory('technisch')) {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
        }
        if (cc.allowedCategory('komfort')) {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'denied',
                }
            });
        }
        if (cc.allowedCategory('matomo_analytics')) {
            _mtm.push({
                'event': 'consent_matomo',
                'consent_matomo': 'active'
            });
            dataLayer.push({
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
        if (cc.allowedCategory('google_analytics')) {
            _mtm.push({
                'event': 'consent_google',
                'consent_google': 'active'
            });
            dataLayer.push({
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
    },

    onChange: function (cookie, changed_preferences) {
        console.log('onChange fired!');
        if (cc.allowedCategory('technisch')) {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
            dataLayer.push({
                'event': 'consent_technisch',
                'consent_technisch': {
                    'technisch': 'denied',
                }
            });
        }
        if (cc.allowedCategory('komfort')) {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
        } else {
            _mtm.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'active',
                }
            });
            dataLayer.push({
                'event': 'consent_komfort',
                'consent_komfort': {
                    'komfort': 'denied',
                }
            });
        }
        if (cc.allowedCategory('matomo_analytics')) {
            _mtm.push({
                'event': 'consent_matomo',
                'consent_matomo': 'active'
            });
            dataLayer.push({
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
        if (cc.allowedCategory('google_analytics')) {
            _mtm.push({
                'event': 'consent_google',
                'consent_google': 'active'
            });
            dataLayer.push({
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
    },

    languages: {
        'de': {
            consent_modal: {
                title: 'Wir verwenden Cookies!',
                description: 'Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type="button" data-cc="c-settings" class="cc-link">Let me choose</button>',
                primary_btn: {
                    text: 'Akzeptiere alle',
                    role: 'accept_all'
                },
                primary1_btn: {
                    text: 'Einstellungen',
                    role: 'settings'
                },
                secondary_btn: {
                    text: 'Alle Ablehnen',
                    role: 'accept_necessary'
                },
                revision_message: '<br><br> Dear user, terms and conditions have changed since the last time you visisted!',
            },
            settings_modal: {
                title: 'Cookie-Einstellungen',
                save_settings_btn: 'Einstellungen speichern',
                accept_all_btn: 'Akzeptiere alle',
                reject_all_btn: 'Alles ablehnen',
                close_btn_label: 'Schließen',
                cookie_table_headers: [
                    {col1: 'Name'},
                    {col2: 'Domain'},
                    {col3: 'Ablauf'},
                    {col4: 'Beschreibung'}
                ],
                blocks: [
                    {
                        title: 'Cookie-Nutzung 📢',
                        description: 'I use cookies to ensure the basic functionalities of the website and to enhance your online experience. You can choose for each category to opt-in/out whenever you want. For more details relative to cookies and other sensitive data, please read the full <a href="#" class="cc-link">privacy policy</a>.'
                    }, {
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
                                col4: 'Shopware eigenes Cookie mit den Einstellungen des CookieBanners',
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
                    }, {
                        title: 'Komfort',
                        description: 'These cookies are essential for the proper functioning of my website. Without these cookies, the website would not work properly',
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
                    }, {
                        title: 'Matomo Analytics / Tag-Manager',
                        description: 'These cookies allow the website to remember the choices you have made in the past',
                        toggle: {
                            value: 'matomo_analytics',
                            enabled: false,
                            readonly: false
                        }
                    }, {
                        title: 'Google Analytics / Tag-Manager',
                        description: 'These cookies allow the website to remember the choices you have made in the past',
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
                    }, {
                        title: 'Bing Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Clarity Usability',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Facebook Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'AdWords Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Hotjar Usability',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Instagram Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Pinterest Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Youtube Werbe- und Targeting-Cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
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
                    }, {
                        title: 'Mehr Informationen',
                        description: 'Bei Fragen zu unserer Richtlinie zu Cookies und Ihren Auswahlmöglichkeiten wenden Sie sich bitte an <a class="cc-link" href="#yourcontactpage">Kontakt</a>.',
                    }
                ]
            }
        },
        'en': {
            consent_modal: {
                title: 'We use cookies!',
                description: 'Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type="button" data-cc="c-settings" class="cc-link">Let me choose</button>',
                primary_btn: {
                    text: 'Accept all',
                    role: 'accept_all'              // 'accept_selected' or 'accept_all'
                },
                secondary_btn: {
                    text: 'Reject all',
                    role: 'accept_necessary'        // 'settings' or 'accept_necessary'
                }
            },
            settings_modal: {
                title: 'Cookie preferences',
                save_settings_btn: 'Save settings',
                accept_all_btn: 'Accept all',
                reject_all_btn: 'Reject all',
                close_btn_label: 'Close',
                cookie_table_headers: [
                    {col1: 'Name'},
                    {col2: 'Domain'},
                    {col3: 'Expiration'},
                    {col4: 'Description'}
                ],
                blocks: [
                    {
                        title: 'Cookie usage 📢',
                        description: 'I use cookies to ensure the basic functionalities of the website and to enhance your online experience. You can choose for each category to opt-in/out whenever you want. For more details relative to cookies and other sensitive data, please read the full <a href="#" class="cc-link">privacy policy</a>.'
                    }, {
                        title: 'Strictly necessary cookies',
                        description: 'These cookies are essential for the proper functioning of my website. Without these cookies, the website would not work properly',
                        toggle: {
                            value: 'necessary',
                            enabled: true,
                            readonly: true          // cookie categories with readonly=true are all treated as "necessary cookies"
                        },
                        cookie_table: [             // list of all expected cookies
                            {
                                col1: '^_ga',       // match all cookies starting with "_ga"
                                col2: 'google.com',
                                col3: '2 years',
                                col4: 'description ...',
                                is_regex: true
                            },
                            {
                                col1: '_gid',
                                col2: 'google.com',
                                col3: '1 day',
                                col4: 'description ...',
                            }
                        ]
                    }, {
                        title: 'Performance and Analytics cookies',
                        description: 'These cookies allow the website to remember the choices you have made in the past',
                        toggle: {
                            value: 'analytics',     // your cookie category
                            enabled: false,
                            readonly: false
                        },
                        cookie_table: [             // list of all expected cookies
                            {
                                col1: '^_ga',       // match all cookies starting with "_ga"
                                col2: 'google.com',
                                col3: '2 years',
                                col4: 'description ...',
                                is_regex: true
                            },
                            {
                                col1: '_gid',
                                col2: 'google.com',
                                col3: '1 day',
                                col4: 'description ...',
                            }
                        ]
                    }, {
                        title: 'Advertisement and Targeting cookies',
                        description: 'These cookies collect information about how you use the website, which pages you visited and which links you clicked on. All of the data is anonymized and cannot be used to identify you',
                        toggle: {
                            value: 'targeting',
                            enabled: false,
                            readonly: false
                        }
                    }, {
                        title: 'More information',
                        description: 'For any queries in relation to our policy on cookies and your choices, please <a class="cc-link" href="#yourcontactpage">contact us</a>.',
                    }
                ]
            }
        }
    }
});