{* Produkt View item - Produktdetail Seite START *}
{if $Controller === 'detail'}
    {include file="frontend/index/DataLayer/view_item.tpl"}
{/if}
{* Produkt View item - Produktdetail Seite ENDE *}

{* Produkt View item List - Kategorieseite START *}
{if $Controller === 'listing'}
    {include file="frontend/index/DataLayer/view_item_list.tpl"}
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
    custom Seite (Bsp über Uns)
{/if}

{if $Controller1 === 'forms'}
    forms Seite (Bsp Kontakt)
{/if}

{* Kompletter Checkout START *}
{if $Controller === 'checkout'}

    {* Cart View - Warenkorb ansehen START *}
    {if $baseUrl === '/checkout/cart'}
        {include file="frontend/index/DataLayer/view_cart.tpl"}
    {/if}
    {* Cart View - Warenkorb ansehen ENDE *}

    {* Begin Checkout - Kauf starten START *}
    {if $baseUrl === '/checkout/confirm' }
        {include file="frontend/index/DataLayer/begin_checkout.tpl"}
    {/if}
    {* Begin Checkout - Kauf starten ENDE *}

    {* add_shipping_info - Shipping START *}
    {if $baseUrl === '/checkout/shippingPayment/sTarget/checkout' }
        {include file="frontend/index/DataLayer/add_shipping_info.tpl"}
    {/if}
    {* add_shipping_info - Shipping ENDE *}

    {* add_payment_info - Payment START *}
    {if $baseUrl === '/checkout/shippingPayment/sTarget/checkout' }
        {include file="frontend/index/DataLayer/add_payment_info.tpl"}
    {/if}
    {* add_payment_info - Payment ENDE *}

    {* Purchase - Abschluss Seite START *}
    {if ($baseUrl === '/checkout/finish') OR ($baseUrl|strstr:"/checkout/finish/sUniqueID")}
        {include file="frontend/index/DataLayer/purchase.tpl"}
    {/if}
    {* Purchase - Abschluss Seite ENDE *}

{/if}
{* Kompletter Checkout ENDE *}