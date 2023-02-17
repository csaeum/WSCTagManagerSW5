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