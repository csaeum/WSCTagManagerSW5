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