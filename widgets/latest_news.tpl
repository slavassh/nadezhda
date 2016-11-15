<div class="titleExt">
    <h5><span class="ext">Новости МБУ Центр "Надежда"</span></h5>
</div>
{foreach $recent_news as $item}
	<div class="post">
        <h2><a href="{site_url($item.full_url)}">{$item.title}</a></h2>
        {$item.prev_text}
        <div class="postinfo">
            <span class="news-date">{date('d-m-Y', $item.publish_date)}</span>        
            <a class="more" href="{site_url($item.full_url)}">{lang('full_article')}</a>
        </div>

     </div>
{/foreach}



