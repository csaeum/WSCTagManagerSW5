{literal}
    'event': 'purchase',
    'ecommerce': {
    'currency': '{/literal}{$sBasket.sCurrencyName}{literal}',
    'transaction_id': '{/literal}{$sOrderNumber}{literal}',
    'value': {/literal}{$sBasket.Amount|replace:",":"."}{literal},{/literal}

{* START Coupon *}
{if $Coupon}
{literal}'coupon': '{/literal}{$sBasket.sCurrencyName}{literal}',{/literal}
{/if}
{* ENDE Coupon *}

{literal}'shipping': {/literal}{$sBasket.sShippingcostsWithTax|replace:",":"."}{literal},
    'tax': {/literal}{$sBasket.sAmountTax|replace:",":"."}{literal},
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
    'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',{/literal}

    {* START Coupon *}
    {if $sArticle.modus === '2'}
    {literal}'coupon': '{/literal}Gutschein eingesetzt{literal}',{/literal}
    {/if}
    {* ENDE Coupon *}

    {* START Discount *}
    {if $sArticle.additional_details.pseudopricePercent.float}
    {literal}'discount': {/literal}{math equation="(x / 100) * y" x=$sArticle.additional_details.pseudoprice_numeric y=$sArticle.additional_details.pseudopricePercent.float}{literal},{/literal}
    {/if}
    {* ENDE Discount *}

{literal}'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
    'item_brand': '{/literal}{$sArticle.additional_details.supplierName|escapeHtml}{literal}',{/literal}

    {* START ist es eine Varianten *}
    {if $sArticle.additional_details.additionaltext != ''}
    {literal}'item_variant': '{/literal}{$sArticle.additional_details.additionaltext}{literal}',{/literal}
    {/if}
    {* ENDE ist es eine Varianten *}

{literal}'price': {/literal}{$sArticle.amountNumeric|replace:",":"."}{literal},
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
    'usedCouponCode': '{/literal}{$afvouchercode}{literal}',
    'consumerSalutation': '{/literal}{$sUserData.additional.user.salutation}{literal}',
    'consumerFirstName': '{/literal}{$sUserData.additional.user.firstname}{literal}',
    'consumerLastName': '{/literal}{$sUserData.additional.user.lastname}{literal}',
    'consumerEmail': '{/literal}{$sUserData.additional.user.email}{literal}',
    'consumerCountry': '{/literal}{$sUserData.additional.country.countryiso}{literal}',
    'consumerZipcode': '{/literal}{$sUserData.billingaddress.zipcode}{literal}'
    }
{/literal}