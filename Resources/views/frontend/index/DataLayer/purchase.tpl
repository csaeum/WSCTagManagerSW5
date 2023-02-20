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
    },
    'userData': {
    'sessionId': '{/literal}{$sUserData.additional.user.sessionID}{literal}',
    'timestamp': '{/literal}{$smarty.now}{literal}',
    'orderValue': '{/literal}{$sBasket.AmountNet|replace:",":"."}{literal}',
    'usedCouponCode': '{/literal}{$couponCode}{literal}--hier',
    'consumerSalutation': '{/literal}{$sUserData.additional.user.salutation}{literal}',
    'consumerFirstName': '{/literal}{$sUserData.additional.user.firstname}{literal}',
    'consumerLastName': '{/literal}{$sUserData.additional.user.lastname}{literal}',
    'consumerEmail': '{/literal}{$sUserData.additional.user.email}{literal}',
    'consumerCountry': '{/literal}{$sUserData.additional.country.countryiso}{literal}',
    'consumerZipcode': '{/literal}{$sUserData.billingaddress.zipcode}{literal}'
    }
{/literal}