{literal}
window.addEventListener('load', function () {

    var cc = initCookieConsent();

    cc.run({
        auto_language: document,
        autoclear_cookies: true,
        autorun: true,
        cookie_expiration: 8,
        cookie_name: 'cc_cookie',
        current_lang: 'de',
        delay: 0,
        force_consent: true,
        hide_from_bots: true,
        mode: 'opt-in',
        page_scripts: true,
        remove_cookie_tables: false,
        revision: {/literal}{config name='wsc_Cookie_Vergleichswert'}{literal},
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

            {/literal}{include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}{literal}

        },

        onAccept: function (cookie) {
            console.log('onAccept fired')

            {/literal}{include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}{literal}

        },

        onChange: function (cookie, changed_preferences) {
            console.log('onChange fired');

            {/literal}{include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}{literal}

        },

        languages: {
            'de': {
                consent_modal: {
                    title: '{/literal}{s name="wscTagManagerSW5/orestbida/consent_model-Title"}{/s}{literal}',
                    description: '{/literal}{s name="wscTagManagerSW5/orestbida/consent_model-Description"}{/s}{literal}<br /><br /><button type="button" id="wsc-cookie" data-cc="c-settings" class="c-bn cc_link">Cookies selbst wählen</button>',
                    primary_btn: {
                        text: 'Akzeptiere alle',
                        role: 'accept_all'
                    },
                    secondary_btn: {
                        text: 'Alle Ablehnen',
                        role: 'accept_necessary'
                    },
                    revision_message: '{/literal}{s name="wscTagManagerSW5/orestbida/consent_model-Revision_Message"}{/s}{literal}',
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

                        {/literal}{include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-blocks.tpl"}{literal}

                    ]
                }
            }
        }
    });
});
{/literal}