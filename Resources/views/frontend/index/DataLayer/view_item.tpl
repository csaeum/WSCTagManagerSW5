{literal}
'event': 'view_item',
'ecommerce': {
    'currency': '{/literal}{0|currency:USE_SHORTNAME:LEFT|truncate:3:''}{literal}',
    'value': '{/literal}{if $sArticle.pseudoprice_numeric === '0'}{$sArticle.pseudoprice_numeric|replace:",":"."}{else}{$sArticle.price_numeric|replace:",":"."}{/if}{literal}',
    'items': [
        {
        'item_id': '{/literal}{$sArticle.ordernumber}{literal}',
        'item_name': '{/literal}{$sArticle.articleName|escape}{literal}',
        'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',{/literal}

    {* START Discount *}
    {if $sArticle.pseudopricePercent.float}
        {literal}
        'discount': {/literal}{math equation="(x / 100) * y" x=$sArticle.pseudoprice_numeric y=$sArticle.pseudopricePercent.float}{literal},
        {/literal}
    {/if}
    {* ENDE Discount *}

    {literal}
        'index': 0,
    {/literal}
    {literal}
        'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
    {/literal}

    {* START Category Schleife *}
    {foreach $sBreadcrumb as $cat}

        {if !isset ($counter)}
            {assign var='counter' value='1'}
        {/if}

        {if $counter === '1'}
        {literal}
            'item_category': '{/literal}{$cat.name}{literal}',
        {/literal}
            {assign var='counter' value=$counter + 1}
        {else}
        {literal}
            'item_category{/literal}{$counter}'{literal}: '{/literal}{$cat.name}{literal}',
        {/literal}
            {assign var='counter' value=$counter + 1}
        {/if}

    {/foreach}
    {* ENDE Category Schleife *}

{* START ist es eine Varianten *}
{if $sArticle.additionaltext != ''}
    {literal}
        'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
    {/literal}
{/if}
{* ENDE ist es eine Varianten *}

{literal}
    'price': {/literal}{if $sArticle.pseudoprice_numeric >= $sArticle.price_numeric}{$sArticle.pseudoprice_numeric|replace:",":"."}{else}{$sArticle.price_numeric|replace:",":"."}{/if}{literal},
    'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
        }
    ]
}
{/literal}