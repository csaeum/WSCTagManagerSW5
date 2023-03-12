{namespace name="frontend/cookiepermission/index"}

<style>
    .cookie-permission--configure-button {
        margin-top: 15px !important;
        margin-bottom: 15px !important;
    }

    .cookie-permission--decline-button, .cookie-permission--accept-button {
        margin-right: 0px !important;
    }

    .cookie-permission--content.is--first.block {
        width: 100%;
    }

    .cookie-permission--button.is--last.block {
        width: 100%;
    }

    @media screen and (min-width: 64em) {
        .cookie-permission--content.is--first.block {
            float: left !important;
            width: 75% !important;
        }

        .cookie-permission--button.is--last.block {
            float: right !important;
            width: 25% !important;
        }

        .page-wrap--cookie-permission .cookie-permission--container.cookie-mode--1 .cookie-permission--content.cookie-permission--extra-button {
            width: 100%;
        }

        .page-wrap--cookie-permission .cookie-permission--container.cookie-mode--1 .cookie-permission--content {
            text-align: center;
            padding: 1.75rem;
        }

        .page-wrap--cookie-permission .cookie-permission--container.cookie-mode--1 .cookie-permission--button.cookie-permission--extra-button {
            width: 100%;
        }

        .page-wrap--cookie-permission .cookie-permission--container.cookie-mode--1 .cookie-permission--button {
            width: 15rem;
            right: .3125rem;
            position: static;
            top: calc(50% - 21px);
        }
    }
</style>

<div class="page-wrap--cookie-permission is--hidden js--modal sizing--content"
     style="width: 66%; height: auto; display: block; top: 33%; opacity: 1;"
     data-cookie-permission="true"
     data-urlPrefix="{url controller=index action=index}"
     data-title="{s name="cookiePermission/title"}{/s}"
     data-cookieTimeout="{config name="cookieTimeout"}"
     {if $Shop}data-shopId="{$Shop->getId()}"{/if}>

    {if {config name="cookie_note_mode"} != 2}
        {block name="cookie_permission_container"}
            <div class="cookie-permission--container cookie-mode--{config name="cookie_note_mode"}">

                {block name="cookie_permission_content"}
                    <div class="cookie-permission--content{if {config name="cookie_note_mode"} == 1 && {config name="cookie_show_button"}} cookie-permission--extra-button{/if} is--first block">
                        {block name="cookie_permission_content_text"}
                            {if {config name="cookie_note_mode"} == 1}
                                {s name="cookiePermission/textMode1"}{/s}
                            {else}
                                {s name="cookiePermission/text"}{/s}
                            {/if}
                        {/block}

                        {block name="cookie_permission_content_link"}
                            {$privacyLink = {config name="data_privacy_statement_link"}}
                            {if $privacyLink}
                                <a title="{s name="cookiePermission/linkText"}{/s}"
                                   class="cookie-permission--privacy-link"
                                   href="{$privacyLink}">
                                    {s name="cookiePermission/linkText"}{/s}
                                </a>
                            {/if}
                        {/block}
                    </div>
                {/block}

                {block name="cookie_permission_accept_button"}
                    <div class="cookie-permission--button{if {config name="cookie_note_mode"} == 1 && {config name="cookie_show_button"}} cookie-permission--extra-button{/if} is--last block">

                        {block name="cookie_permission_accept_button_fixed"}
                            {if {config name="cookie_note_mode"} == 1}
                                {if {config name="cookie_show_button"}}
                                    <a href="#" class="cookie-permission--accept-button btn is--full is--center">
                                        {s name="cookiePermission/acceptAll"}{/s}
                                    </a>
                                {/if}
                                <a href="#" class="cookie-permission--configure-button btn is--full is--center" data-openConsentManager="true">
                                    {s name="cookiePermission/configure"}{/s}
                                </a>
                            {else}
                                <a href="#" class="cookie-permission--accept-button btn is--full is--center">
                                    {s name="cookiePermission/buttonText"}{/s}
                                </a>
                            {/if}
                        {/block}

                        {block name="cookie_permission_decline_button_fixed"}
                            {if {config name="cookie_note_mode"} == 1}
                                {block name="cookie_permission_decline_button"}
                                    <a href="#" class="cookie-permission--decline-button btn is--full is--center">
                                        {s name="cookiePermission/declineText"}{/s}
                                    </a>
                                {/block}
                            {/if}
                        {/block}

                    </div>
                {/block}

            </div>
        {/block}
    {else}
        {block name="cookie_removal_container"}
            <div class="cookie-removal--container">
                <p>
                    {s name="cookiePermission/infoText"}{/s}<br>
                </p>
                <ul class="cookie-removal--list">
                    <li>{s name="cookiePermission/productToCart"}{/s}</li>
                    <li>{s name="cookiePermission/wishList"}{/s}</li>
                    <li>{s name="cookiePermission/productRecommandations"}{/s}</li>
                </ul>

                {block name="cookie_removal_container_footer"}
                    <div class="cookie-removal--footer">
                        {$privacyLink = {config name="data_privacy_statement_link"}}
                        {if $privacyLink}
                            <a title="{s name="cookiePermission/linkText"}{/s}"
                               class="privacy--notice"
                               href="{$privacyLink}">
                                {s name="cookiePermission/linkText"}{/s}
                            </a>
                        {/if}

                        <div class="cookie-removal--buttons">
                            <a class="btn is--secondary cookie-permission--accept-button is--center">{s name="cookiePermission/buttonText"}{/s}</a>
                            <a class="btn cookie-permission--close-button is--center">{s name="cookiePermission/close"}{/s}</a>
                        </div>
                    </div>
                {/block}
            </div>
        {/block}
    {/if}
</div>
