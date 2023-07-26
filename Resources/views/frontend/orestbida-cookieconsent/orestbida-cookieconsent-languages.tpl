{literal}
    default: "de",
    autoDetect: "browser",
    translations: {
        de: {
            consentModal: {
                label: "Cookie-Zustimmung",
                title: "{/literal}{s name="wscTagManagerSW5/orestbida/settings_model-Blocks-Title"}{/s}{literal} Wir verwenden Cookies",
                description: "{/literal}{s name="wscTagManagerSW5/orestbida/settings_model-Blocks-Description"}{/s} TEXTBLOCK{literal}",
                acceptAllBtn: "Alle akzeptieren",
                acceptNecessaryBtn: "Alle ablehnen",
                showPreferencesBtn: "Einstellungen verwalten",
                closeIconLabel: "Alle ablehnen und schließen",
                footer: "<a href=\"/impressum\">Impressum</a>|<a href=\"/datenschutz\">Datenschutz</a>|<a href=\"/agb\">AGB</a>"
            },
            preferencesModal: {
                title: "Präferenzen für die Zustimmung",
                acceptAllBtn: "Alle akzeptieren",
                acceptNecessaryBtn: "Alle ablehnen",
                savePreferencesBtn: "Einstellungen speichern",
                closeIconLabel: "Modal schließen",
                serviceCounterLabel: "Dienstleistungen",
                sections: [
                    {
                        title: "Verwendung von Cookies",
                        description: ""
                    },
                    {
                        title: "Technisch erforderliche Cookies <span class=\"pm__badge\">Immer Aktiviert</span>",
                        description: "Technische Cookies",
                        linkedCategory: "technisch",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: '^__csrf_token',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie um die Verwendung abzusichern',
                                },
                                {
                                    name: 'cookiePreferences-1',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie mit den Einstellungen des CookieBanners von Shopware',
                                },
                                {
                                    name: 'nocache-1',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie ob Cache verwendet wird',
                                },
                                {
                                    name: 'PHPSESSID',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie um den Kunden zu erkennen und abzusichern',
                                },
                                {
                                    name: 'session-1',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie um den Kunden zu erkennen und abzusichern',
                                },
                                {
                                    name: 'x-ua-device',
                                    domain: 'www.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Shopware eigenes Cookie welches Gerät der User verwendet',
                                }
                            ]
                        }
                    },
                    {
                        title: "Komfort Cookies",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}",
                        linkedCategory: "komfort",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: '--',
                                    domain: 'sovendus.de',
                                    age: 'Sitzungsende',
                                    desc: 'Sovendus',
                                },
                                {
                                    name: '--',
                                    domain: 'livechat.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Unser eigener Zammad Live-Chat',
                                },
                                {
                                    name: '--',
                                    domain: 'news.schicker-mineral.de',
                                    age: 'Sitzungsende',
                                    desc: 'Unser eigenes Mautic Newsletter Tool',
                                }
                            ]
                        }
                    },
                    {
                        title: "Analytics",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}",
                        linkedCategory: "analytics",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Matomo Analytics",
                                    Service: "Google Analytics"
                                }
                            ]
                        }
                    },
                    {
                        title: "Social Media",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}",
                        linkedCategory: "socialmedia",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Matomo Analytics",
                                    Service: "Google Analytics"
                                }
                            ]
                        }
                    },
                    {
                        title: "Werbung",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}",
                        linkedCategory: "werbung",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Matomo Analytics",
                                    Service: "Google Analytics"
                                }
                            ]
                        }
                    },
                    {
                        title: "Usability",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/cookieAllgemeinBeschreibung"}{/s}{literal}",
                        linkedCategory: "usability",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                domain: "Beschreibung",
                                age: "Laufzeit",
                                desc: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Matomo Analytics",
                                    Service: "Google Analytics"
                                }
                            ]
                        }
                    },
                    {
                        title: "{/literal}{s name="wscTagManagerSW5/orestbida/Title-cookieMoreInfo"}{/s}{literal}",
                        description: "{/literal}{s name="wscTagManagerSW5/orestbida/Description-cookieMoreInfo"}{/s}{literal} <a class=\"cc__link\" href=\"/kontakt\">Kontakt</a>."
                    }
                ]
            }
        },
        en: {
            consentModal: {
                label: "Cookie consent",
                title: "Hello traveller, it's cookie time!",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.",
                acceptAllBtn: "Accept all",
                acceptNecessaryBtn: "Reject all",
                showPreferencesBtn: "Manage preferences",
                closeIconLabel: "Reject all and close",
                footer: "<a href=\"#link\">Privacy Policy</a><a href=\"#link\">Terms and conditions</a>"
            },
            preferencesModal: {
                title: "Consent Preferences Center",
                acceptAllBtn: "Accept all",
                acceptNecessaryBtn: "Reject all",
                savePreferencesBtn: "Save preferences",
                closeIconLabel: "Close modal",
                serviceCounterLabel: "Service|Services",
                sections: [
                    {
                        title: "Cookie Usage",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                        title: "Strictly Necessary Cookies <span class=\"pm__badge\">Always Enabled</span>",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "necessary"
                    },
                    {
                        title: "Functionality Cookies",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "functionality"
                    },
                    {
                        title: "Analytics Cookies",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "analytics",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Description",
                                Service: "Service"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Used to track you ...",
                                    Service: "Google Analytics"
                                }
                            ]
                        }
                    },
                    {
                        title: "Advertisement Cookies",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "marketing"
                    },
                    {
                        title: "More information",
                        description: "For any query in relation to my policy on cookies and your choices, please <a class=\"cc__link\" href=\"#yourdomain.com\">contact me</a>."
                    }
                ]
            }
        }
{/literal}