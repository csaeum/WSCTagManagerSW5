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
    revision: {
  /literal}{config name='wsc_Cookie_Vergleichswert'}{literal},
  use_rfc_cookie: false,
      // cookie_necessary_only_expiration: 182   // default: disabled
      // cookie_domain: location.hostname,       // default: current domain
      // cookie_path: '/',                       // default: root
      // cookie_same_site: 'Lax',                // default: 'Lax'

      gui_options
:
  {
    consent_modal: {
      layout: 'box',
          position
    :
      'middle center',
          transition
    :
      'zoom'
    }
  ,
    settings_modal: {
      layout: 'box',
          transition
    :
      'zoom'
    }
  }
,

  onFirstAction: function (user_preferences, cookie) {
    console.log('onFirstAction fired');

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

  }
,

  onAccept: function (cookie) {
    console.log('onAccept fired!')

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

  }
,

  onChange: function (cookie, changed_preferences) {
    console.log('onChange fired!');

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

  }
,

  languages: {
    'de'
  :
    {
      consent_modal: {
        title: 'Wir verwenden Cookies!',
            description
      :
        '{/literal}{s name="cookiePermission/wirverwendencookies"}{/s}{literal}<br /><br /><button type="button" id="wsc-cookie" data-cc="c-settings" class="c-bn cc_link">Cookies selbst wählen</button>',
            primary_btn
      :
        {
          text: 'Akzeptiere alle',
              role
        :
          'accept_all'
        }
      ,
        secondary_btn: {
          text: 'Alle Ablehnen',
              role
        :
          'accept_necessary'
        }
      ,
        revision_message: '{/literal}{s name="cookiePermission/revision_message"}{/s}{literal}',
      }
    ,
      settings_modal: {
        title: 'Cookie-Einstellungen',
            save_settings_btn
      :
        'Einstellungen speichern',
            accept_all_btn
      :
        'Akzeptiere alle',
            reject_all_btn
      :
        'Alles ablehnen',
            close_btn_label
      :
        'Schließen',
            cookie_table_headers
      :
        [
          {col1: 'Name'},
          {col2: 'Domain'},
          {col3: 'Ablauf'},
          {col4: 'Beschreibung'}
        ],
            blocks
      :
        [
          {
            title: 'Cookie-Nutzung 📢',
            description: '{/literal}{s name="cookiePermission/cookienutzung"}{/s}{literal}'
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
        }, {
          title: 'Komfort',
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
          toggle: {
            value: 'matomo_analytics',
            enabled: false,
            readonly: false
          }
        }, {
          title: 'Google Analytics / Tag-Manager',
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
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
          title: 'Sovendus Partnernetzwerk',
          description: '{/literal}{s name="cookiePermission/cookieAllgemeinBeschreibung"}{/s}{literal}',
          toggle: {
            value: 'partner_gutschein',
            enabled: false,
            readonly: false
          }
        }, {
          title: '{/literal}{s name="cookiePermission/cookieMoreInfo"}{/s}{literal}',
          description: '{/literal}{s name="cookiePermission/cookieMoreInfoBeschreibung"}{/s}{literal}',
        }
        ]
      }
    }
  }
})
  ;
})
  ;
  {
    /literal}