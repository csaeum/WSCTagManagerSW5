{literal}
    default: "de",
    autoDetect: "browser",
    translations: {
        de: {
            consentModal: {
                label: "Cookie-Zustimmung",
                title: "Hallo Reisende, es ist Kekszeit!",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.",
                acceptAllBtn: "Alle akzeptieren",
                acceptNecessaryBtn: "Alle ablehnen",
                showPreferencesBtn: "Einstellungen verwalten",
                closeIconLabel: "Alle ablehnen und schließen",
                footer: "<a href=\"#link\">Impressum</a> | <a href=\"#link\">Datenschutz</a> | <a href=\"#link\">AGB</a>"
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
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                    },
                    {
                        title: "Streng Notwendige Cookies <span class=\"pm__badge\">Immer Aktiviert</span>",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "necessary",
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
                                    desc: 'Shopware eigenes Cookie mit den Einstellungen des CookieBanners von Shopware',
                                },
                                {
                                    name: 'nocache-1',
                                    domain: 'www.schicker-mineral.de',
                                    desc: 'Shopware eigenes Cookie ob Cache verwendet wird',
                                }
                            ]
                        }
                    },
                    {
                        title: "Funktionalitäts Cookies",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "functionality",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Used to track you ...",
                                    Service: "functional"
                                }
                            ]
                        }
                    },
                    {
                        title: "Matomo Analytics",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "matomo_analytics",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
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
                        title: "Google Analytics",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "google_analytics",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "bing_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "bing_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "clarity_usability",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "clarity_usability",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "facebook_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "facebook_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "adwords_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "adwords_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "partner_gutschein",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "partner_gutschein",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "hotjar_usability",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "hotjar_usability",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "instagram_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "instagram_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "openwebanalytics_analytics",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "openwebanalytics_analytics",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "pinterest_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "pinterest_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "youtube_targeting",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "youtube_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "partner_gutschein",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "youtube_targeting",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "xxx",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "xxx",
                        cookieTable: {
                            headers: {
                                name: "Name",
                                description: "Beschreibung",
                                Service: "Dienst"
                            },
                            body: [
                                {
                                    name: "_ga_*, _gid",
                                    description: "Google Analytics",
                                    Service: "Marketing"
                                }
                            ]
                        }
                    },
                    {
                        title: "Weitere Informationen",
                        description: "For any query in relation to my policy on cookies and your choices, please <a class=\"cc__link\" href=\"#yourdomain.com\">contact me</a>."
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