{extends file='parent:frontend/index/footer.tpl'}

{block name="frontend_index_shopware_footer"}

    {$smarty.block.parent}

    {if {config name='wscTagManagerConsentManagerOrestbida'} === '1'}
        <script src="/custom/plugins/WSCTagManagerSW5/Resources/views/frontend/orestbida-cookieconsent/cookieconsent.js"></script>
        <script>
            {include file="frontend/orestbida-cookieconsent/cookieconsent-config.js.tpl"}
        </script>

        {include file="frontend/orestbida-cookieconsent/orestbida-cookieconsent-function.tpl"}

    {/if}

{/block}