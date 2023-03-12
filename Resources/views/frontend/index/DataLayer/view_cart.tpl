{literal}
    'event': 'view_cart',
    'ecommerce': {
    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',
    'value': {/literal}{$sBasket.AmountNumeric|replace:",":"."}{literal},
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
    }
{/literal}