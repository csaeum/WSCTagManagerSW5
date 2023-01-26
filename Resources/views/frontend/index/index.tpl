{extends file="parent:frontend/index/index.tpl"}

{block name='frontend_index_after_body'}

    {if {config name='wscTagManagerMatomo'}}

        {if {config name='wscTagManagerMatomoPage'}}
            {literal}
                <!-- Matomo (noscript) -->
                    <noscript>
                        <p><img src="{/literal}{config name='wscTagManagerMatomoURL'}{literal}/matomo.php?idsite={/literal}{config name='wscTagManagerMatomoPageID'}{literal}&amp;rec=1" style="border:0;" alt="" /></p>
                    </noscript>
                <!-- End Matomo Code (noscript) -->
            {/literal}
        {/if}
    {/if}
    
    {if {config name='wscTagManagerGoogle'}}

        {if {config name='wscTagManagerGoogleTM'}}
            {literal}
                <!-- Google Tag Manager (noscript) -->
                    <noscript>
                        <iframe src="https://www.googletagmanager.com/ns.html?id={/literal}{config name='wscTagManagerGoogleTagID'}{literal}" height="0" width="0" style="display:none;visibility:hidden"></iframe>
                    </noscript>
                <!-- End Google Tag Manager (noscript) -->
            {/literal}
        {/if}
    {/if}

    {$smarty.block.parent}

{/block}