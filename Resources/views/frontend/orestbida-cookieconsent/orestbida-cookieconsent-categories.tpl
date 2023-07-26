technisch: {
    readOnly: true,
    enabled: true,
},
komfort: {
    services: {
        partner_gutschein: {
            label: 'Sovendus',
            onAccept: () => {
                console.log("onAccept Live Chat");
            },
            onReject: () => {
                console.log("onReject Live Chat");
            },
        },
        live_chat: {
            label: 'Live Chat',
            onAccept: () => {
                console.log("onAccept Live Chat");
            },
            onReject: () => {
                console.log("onReject Live Chat");
            },
        },
        mautic: {
            label: 'Mautic Newsletter',
            onAccept: () => {
                console.log("onAccept Mautic Newsletter");
            },
            onReject: () => {
                console.log("onReject Mautic Newsletter");
            },
        },
    },
},
analytics: {
    services: {
        matomo_analytics: {
            label: 'Matomo Analytics',
            onAccept: () => {
                console.log("onAccept Matomo Analytics");
            },
            onReject: () => {
                console.log("onReject Matomo Analytics");
            },
        },
        google_analytics: {
            label: 'Google Analytics',
            onAccept: () => {
                console.log("onAccept Google Analytics");
            },
            onReject: () => {
                console.log("onReject Google Analytics");
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