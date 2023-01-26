{* Produkt View item - Produktdetail Seite START *}
{if $Controller === 'detail'}

    {literal}
        'event': 'view_item',
        'ecommerce': {
            'items': [
                {
                    'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                    'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                    'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                    {if $sArticle.pseudopricePercent.float}
                        {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                    {/if}
{* ENDE Discount *}

                    {literal}'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',{/literal}

{* START Category Schleife *}
                    {foreach $sBreadcrumb as $cat}
                        {if !isset ($counter)}
                            {assign var='counter' value='1'}
                        {/if}
                        {if $counter === '1'}
                            {literal}'item_category': '{/literal}{$cat.name}{literal}',{/literal}
                            {assign var='counter' value=$counter + 1}
                        {else}
                            {literal}'item_category{/literal}{$counter}'{literal}: '{/literal}{$cat.name}{literal}',{/literal}
                        {assign var='counter' value=$counter + 1}
                        {/if}
                    {/foreach}
{* ENDE Category Schleife *}


                        {if $sArticle.additionaltext != ''}
                            {literal}'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',{/literal}
                        {/if}
                        {literal}'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                        'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                }
            ]
        }
    {/literal}
{/if}
{* Produkt View item - Produktdetail Seite ENDE *}

{* Produkt View item List - Kategorieseite START *}
{if $Controller === 'listing'}

    {literal}
        'event': 'view_item_list',
        'ecommerce': {
            'items': [
            {/literal}
                {foreach $sArticles as $sArticle}
                    {if !isset ($counter)}
                        {assign var='counter' value='1'}
                    {/if}
            {literal}
                {
                    'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                    'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                    'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                    {if $sArticle.pseudopricePercent.float}
                        {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                    {/if}
{* ENDE Discount *}

                    {literal}
                    'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                    'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
                    'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
                    'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',
                    'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
                    'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                    'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                },
            {/literal}
                {/foreach}
            {literal}
            ]
        }
    {/literal}
{/if}
{* Produkt View item List - Kategorieseite ENDE *}

{if $Controller1 === 'index'}
    Start Seite
{/if}

{if $Controller1 === 'note'}
    Merkzettel Seite
{/if}

{if $Controller1 === 'register'}
    register Seite
{/if}

{if $Controller1 === 'custom'}
    custom Seite (Bsp Über Uns)
{/if}

{if $Controller1 === 'forms'}
    forms Seite (Bsp Kontakt)
{/if}

{* Kompletter Checkout START *}
{if $Controller === 'checkout'}

    {* Cart View - Warenkorb ansehen START *}
    {if $baseUrl === '/checkout/cart'}

        {literal}
            'event': 'view_cart',
            'ecommerce': {
            'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
            'value: {/literal}{$sBasket.Amount|replace:",":"."}{literal},
            'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',
            'items': [
        {/literal}

            {foreach $sBasket.content as $sArticle}
                {if !isset ($counter)}
                    {assign var='counter' value='1'}
                {/if}
            {literal}
                {
                'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                {if $sArticle.pseudopricePercent.float}
                    {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                {/if}
{* ENDE Discount *}

            {literal}
                'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
                'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
                'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',
                'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
                'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                },
            {/literal}
            {/foreach}
        {literal}
                ]
            }
        {/literal}
    {/if}
    {* Cart View - Warenkorb ansehen ENDE *}

    {* Begin Checkout - Kauf starten START *}
    {if $baseUrl === '/checkout/confirm' }

        {literal}
            'event': 'begin_checkout',
            'ecommerce': {
                'items': [
        {/literal}

            {foreach $sBasket.content as $sArticle}
                {if !isset ($counter)}
                    {assign var='counter' value='1'}
                {/if}
            {literal}
                {
                'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                {if $sArticle.pseudopricePercent.float}
                    {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                {/if}
{* ENDE Discount *}

            {literal}
                'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
                'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
                'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',
                'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
                'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                },
            {/literal}
            {/foreach}

        {literal}
                ]
            }
        {/literal}
    {/if}
    {* Begin Checkout - Kauf starten ENDE *}

    {* add_shipping_info - Shipping START *}
    {if $baseUrl === '/checkout/shippingPayment/sTarget/checkout' }

        {literal}
            'event': 'add_shipping_info',
            'ecommerce': {
                'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',
                'value: {/literal}{$sBasket.Amount|replace:",":"."}{literal},
                'shipping_tier: '{/literal}{$sDispatch.name}{literal}',
                'items': [
        {/literal}

            {foreach $sBasket.content as $sArticle}
                {if !isset ($counter)}
                    {assign var='counter' value='1'}
                {/if}
            {literal}
                {
                'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                {if $sArticle.pseudopricePercent.float}
                    {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                {/if}
{* ENDE Discount *}

            {literal}
                'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
                'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
                'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',
                'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
                'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                },
            {/literal}
            {/foreach}

        {literal}
                ]
            }
        {/literal}
    {/if}
    {* add_shipping_info - Shipping ENDE *}

    {* add_payment_info - Payment START *}
    {if $baseUrl === '/checkout/shippingPayment/sTarget/checkout' }

        {literal}
            'event': 'add_payment_info',
            'ecommerce': {
                'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',
                'value: {/literal}{$sBasket.Amount|replace:",":"."}{literal},
                'payment_type: '{/literal}{$sDispatch.name}{literal}',
                'items': [
        {/literal}

            {foreach $sBasket.content as $sArticle}

                    {if !isset ($counter)}
                        {assign var='counter' value='1'}
                    {/if}

                {literal}
                    {
                    'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                    'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
                    'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                    {if $sArticle.pseudopricePercent.float}
                        {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                    {/if}
{* ENDE Discount *}

                {literal}
                    'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                    'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
                    'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
                    'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',
                    'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
                    'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                    'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
                    },
                {/literal}

            {/foreach}

        {literal}
                ]
            }
        {/literal}
    {/if}
    {* add_payment_info - Payment ENDE *}

    {* Purchase - Abschluss Seite START *}
    {if $baseUrl === '/checkout/finish'}
        {literal}
            'event': 'purchase',
            'ecommerce': {
                'transaction_id': '{/literal}{$sOrderNumber}{literal}',
                'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                'value': {/literal}{$sBasket.Amount|replace:",":"."}{literal},
                'tax': {/literal}{$sBasket.sAmountTax|replace:",":"."}{literal},
                'shipping': {/literal}{$sBasket.sShippingcostsWithTax|replace:",":"."}{literal},
                'currency': '{/literal}{$sBasket.sCurrencyName}{literal}',
                'coupon': '',
                'items': [
        {/literal}

            {foreach $sBasket.content as $sArticle}

                {if !isset ($counter)}
                    {assign var='counter' value='1'}
                {/if}

                {literal}
                    {
                    'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
                    'item_name': '{/literal}{$sArticle.articlename|escape}{literal}',
                    'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',
                    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',{/literal}

{* START Discount *}
                    {if $sArticle.pseudopricePercent.float}
                        {literal}'discount': {/literal}{$sArticle.pseudopricePercent.float|number|replace:",":"."}{literal},{/literal}
                    {/if}
{* ENDE Discount *}

                {literal}
                    'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
                    'price': {/literal}{$sArticle.price|replace:",":"."}{literal},
                    'quantity': {/literal}{$sArticle.quantity|replace:",":"."}{literal},
                    },
                {/literal}

            {/foreach}

        {literal}
                ]
            }
        {/literal}

    {/if}
    {* Purchase - Abschluss Seite ENDE *}

{/if}
{* Kompletter Checkout ENDE *}