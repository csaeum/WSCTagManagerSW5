technisch: {
    readOnly: true,
    enabled: true,
},
komfort: {
    services: {
        partner_gutschein: {
            label: 'Sovendus',
            onAccept: () => { },
            onReject: () => { },
        },
    },
},
analytics: {
    services: {
        matomo_analytics: {
            label: 'Matomo Analytics',
            onAccept: () => cc.acceptService('matomo_analytics'),
            onReject: () => cc.rejectService('matomo_analytics'),
            onAccept: () => {
                console.log("onAccept Matomo Analytics");
                _mtm.push({
                    'event': 'consent_komfort',
                    'consent_matomo': 'active'
                });
            },
            onReject: () => {
                console.log("onReject Matomo Analytics");
                _mtm.push({
                    'event': 'consent_komfort',
                    'consent_matomo': 'denied'
                });
            },
        },
        google_analytics: {
            label: 'Google Analytics',
            onAccept: () => cc.acceptService('google_analytics'),
            onReject: () => cc.rejectService('google_analytics'),
            onAccept: () => {
                console.log("onAccept Google Analytics");
                window.dataLayer.push({
                    'event': 'consent_google',
                    'consent_google': 'active'
                });
            },
            onReject: () => {
                console.log("onReject Google Analytics");
                dataLayer.push({
                    'event': 'consent_google',
                    'consent_google': 'denied'
                });
            },
        },
        openwebanalytics_analytics: {
            label: 'OpenWeb Analytics',
            onAccept: () => {
                console.log("onAccept OpenWeb Analytics");
            },
            onReject: () => {
                console.log("onReject OpenWeb Analytics");
            },
        },
        youtube_targeting: {
            label: 'Youtube',
            onAccept: () => { },
            onReject: () => { },
        },
    },
},
socialmedia: {
    services: {
        facebook_targeting: {
            label: 'Facebook',
            onAccept: () => { },
            onReject: () => { },
        },
        instagram_targeting: {
            label: 'Instagram',
            onAccept: () => { },
            onReject: () => { },
        },
        pinterest_targeting: {
            label: 'Pinterest',
            onAccept: () => { },
            onReject: () => { },            
        }
    },
},
werbung: {
    services: {
        adwords_targeting: {
            label: 'Google Adwords',
            onAccept: () => { },
            onReject: () => { },
        },
        bing_targeting: {
            label: 'Microsoft Bing Advertisement',
            onAccept: () => { },
            onReject: () => { },
        },
    },
},
usability: {
    services: {
        clarity_usability: {
            label: 'Clarity',
            onAccept: () => { },
            onReject: () => { },
        },
        hotjar_usability: {
            label: 'HotJar',
            onAccept: () => { },
            onReject: () => { },
        },
    },
}