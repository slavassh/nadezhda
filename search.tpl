<div class="titleExt" style="margin-top:-15px"><h5>{widget('path')}<span class="ext">Результаты поиска: {$search_title}</span></h5></div>

<br />

{if !$items}
        <p style="margin-top:-20px; margin-bottom:30px;">{lang('no_pages_found')}...</p>
{/if}

<ul style="margin-top:-20px; color:#002a61;">
    {foreach $items as $page}
        <li>
            <a style="color:#002a61;" href="{site_url($page.full_url)}">{$page.title}</a>
            <p>
                {$page.parsedText}
            </p>
        </li>
    {/foreach}
</ul>

<div class="pagination" align="center">
    <span style="color:#002a61; font-size:12px; padding-left:2px; padding-right:2px;>{$pagination}</span>
</div>
<br>
<br>