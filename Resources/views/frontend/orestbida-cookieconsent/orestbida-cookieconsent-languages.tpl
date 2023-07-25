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
                footer: "<a href=\"#link\">Impressum</a>|<a href=\"#link\">Datenschutz</a>|<a href=\"#link\">AGB</a>"
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
                        linkedCategory: "komfort",
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
                        title: "Analytics",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "analytics",
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
                        title: "Social Media",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "socialmedia",
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
                        title: "Werbung",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "werbung",
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
                        title: "Usability",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        linkedCategory: "usability",
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