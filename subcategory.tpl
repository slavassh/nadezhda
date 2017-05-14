<div class="titleExt"><h5>{widget('path')}<span class="ext">{$category.name}</span></h5></div>
{$category.short_desc}

<div class="sub_category_list">

{* {$category_list = get_sub_categories($category.id)}
{foreach $category_list as $cat_val_list}

    <h2><a class="category__title" href="{site_url($cat_val_list.path_url)}">{$cat_val_list.name}</a></h2>
    {$page_list = category_pages($cat_val_list.id)}
    {if $page_list}
    <ul class="category__list">
      {foreach $page_list as $page_val}
        <li class="category__link"><a href="{site_url($page_val.full_url)}">{$page_val.title}</a></li>
      {/foreach}
    </ul>
    {/if}    

{/foreach} *}

</div>
