{literal}
'event': 'view_item_list',
'ecommerce': {
    'item_list_id': '{/literal}{$sCategoryContent.id}{literal}',
    'item_list_name': '{/literal}{$sCategoryContent.name}{literal}',
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
            'affiliation': '{/literal}{if isset($smarty.cookies.partner)}{$smarty.cookies.partner|escape}{else}kein_Partner{/if}{literal}',{/literal}

    {* START Discount *}
    {if $sArticle.pseudopricePercent.float}
        {literal}
            'discount': {/literal}{math equation="(x / 100) * y" x=$sArticle.pseudoprice_numeric y=$sArticle.pseudopricePercent.float}{literal},
        {/literal}
    {/if}
    {* ENDE Discount *}


        {literal}
            'index': {/literal}{$counter}{assign var='counter' value=$counter + 1}{literal},
            'item_brand': '{/literal}{$sArticle.supplierName|escapeHtml}{literal}',
            'item_category': '{/literal}{$sBreadcrumb[0].name}{literal}',
            'item_list_name': 'Kategorie {/literal}{$sBreadcrumb[0].name}{literal}',{/literal}

    {* START ist es eine Varianten *}
    {if $sArticle.additionaltext != ''}
        {literal}
            'item_variant': '{/literal}{$sArticle.additionaltext}{literal}',
        {/literal}
    {/if}
    {* ENDE ist es eine Varianten *}

        {literal}
            'price': {/literal}{$sArticle.price_numeric|replace:",":"."}{literal},
            'quantity': {/literal}{$sArticle.minpurchase|replace:",":"."}{literal},
            },
        {/literal}

    {/foreach}

{literal}
    ]
}
{/literal}