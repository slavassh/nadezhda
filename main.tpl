<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{$page_type = $CI->core->core_data['data_type'];}
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>{$site_title}</title>
<meta name="description" content="{$site_description}" />
<meta name="keywords" content="{$site_keywords}" />
<meta name="generator" content="Artproject Group Ltd." />
<meta name='yandex-verification' content='5e20b9e4fc34f62f' />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css" href="{$THEME}/css/style.css" />
<script type="text/javascript" src="{$THEME}/js/jquery.js"></script>
<script type="text/javascript" src="{$THEME}/js/jquery.cycle.lite.js"></script>
<script type="text/javascript" src="{$THEME}/js/jquery.functions.js"></script>
<script type="text/javascript" src="{$THEME}/js/hoverIntent.js"></script>
<script type="text/javascript" src="{$THEME}/js/superfish.js"></script>

<link rel="icon" href="{$THEME}/images/favicon.png" type="image/x-icon" />

</head>
<body>
<div class="topline"></div>
  <!-- BEGIN HEADER -->
<div id="header">
  <div class="topmenu">
    <div class="topmenu_l">
        <div class="topmenu_r">
              <ul>
        {if $is_logged_in}
        <li class="first">{lang('lang_logged_in_as')} <b>{$username}</b></li>
        <li><a href="{site_url('auth/logout')}">{lang('lang_logout')}</a></li>
        {else:}
                  <li class="first"><a href="{site_url('auth/login')}">Вход</a></li>
                  <li><a href="{site_url('auth/register')}">Регистрация</a></li>
        {/if}
              </ul>
          </div>
      </div>    
  </div>
  <div id="search">
    <form action="{site_url('search')}" method="POST">
        <input type="submit" class="submit" value=""/>
        <input type="text" class="text" name="text" value="Поиск..." onfocus="if(this.value=='Поиск...') this.value='';" onblur="if(this.value=='') this.value='Поиск...';"/>
      {form_csrf()}
  </form>
  </div>
  <a id="logo" href="/"></a>
  <div class="top-links">
    <a class="top-link interpriem" href="/feedback"></a>          
    <a class="top-link news" href="/news"></a>
    <a class="top-link detstran" href="http://children.chelnadezhda.edu.ru"></a>          
  </div>
</div>
<div id="container">
  <div id="navigation">
    {load_menu('main_menu')}
  </div>
  {if $page_type == 'main'}
    <!-- BEGIN SLIDESHOW -->    
    <div id="slideshow">
      <ul id="slides">
        <li><img src="{$THEME}/images/004.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/002.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/003.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/006.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/007.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/008.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/005.jpg" alt="" /></li>
        <li><img src="{$THEME}/images/009.jpg" alt="" /></li>        
      </ul>
      <div id="slideshow_violator">
        <div id="slide_navigation"></div>
      </div>
    </div>    
    <!-- END SLIDESHOW -->
    {/if}
    <div class="featured-links">
      <a class="featured-link first" href="http://www.usynovite.ru/db">Дни открытых дверей</a>
      <a class="featured-link center" href="/vam-usynoviteli">Вам, усыновители...</a>
      <a class="featured-link last" href="/letocompany">Ищу маму и папу...</a>
    </div>
  <div id="main">    
    <!-- BEGIN CONTENT -->
    {if $CI->uri->segment(1) != 'feedback' && $CI->uri->segment(1) != 'gallery'}
      <div id="content">{$content}</div>
    {else:}
      <div id="no_sidebar_content">{$content}</div>
    {/if}    
    <!-- END CONTENT -->
    
    
    {if $CI->uri->segment(1) != 'feedback' && $CI->uri->segment(1) != 'gallery'}
    
    {if $category.id == 59 || $category.parent_id == 59}
    
    
    <!-- START SIDEBAR -->
    <div id="sidebar">
    
    	
         <div class="content">
        </div>
    
      <div class="box">
        <h4 class="title"><span>Категории</span></h4>
        <div class="content">
        	<ul>
          {$sub_cats = get_sub_categories('59')}
          {$count = 0}
          {foreach $sub_cats as $sub_cat}
          		<li {if $count == 0} class="first" {/if}><a href="{site_url('bloh/'. $sub_cat.url)}" {if $sub_cat.id == $category.id} class="active" {/if}>{$sub_cat.name}</a></li>
          {$count++} 
          {/foreach}
          	</ul>
        </div>
      </div>
    
      <div class="bo">
        <h4 class="title"><span>Последние комментарии</span></h4>
        <div class="content">
          {widget('comments ')}
        </div>
      </div>
      
      
      <div class="box">
        <h4 class="title"><span>Облако Тегов</span></h4>
        <div class="content">
			<div>
				{widget('tags')}
			</div>
        </div>
      </div>


	<div class="box"><a href="/rss" class="button1">Подписаться на блог</a></div>
    </div>
    <!-- END SIDEBAR -->
    
    {elseif $category.id == 55}
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Продукция</span></h4>
        <div class="content">
          {widget('product_all')}
        </div>
      </div>
    </div>
    
    {elseif $category.id == 56}
    
    <div id="sidebar">
      <div class="box">
        <h4 class="title"><span>Услуги</span></h4>
        <div class="content">
          {widget('offers_all')}
        </div>
      </div>
    </div>
    
    
    {elseif $category.id == 58}
    
        <div class="content">
          {widget('works')}
        </div>
      </div>
    </div>

    
    {else:}
    
    <!-- START SIDEBAR -->
    <!-- END SIDEBAR -->
    
    {/if}
    
    
    {/if}
    
    
    
    
    
    <div class="sp"></div>    
  <div class="sp"></div>
  </div>
<table width="1000" align="center">
  <tr>
    <td><a href="http://минобрнауки.рф"><img src="{$THEME}/images/minobrrf.png" width="166px" height="58px" style="margin-left:-3px; margin-top:20px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://www.minobr74.ru"><img src="{$THEME}/images/minobr.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); "></img></a>
<a href="http://minsoc74.ru"><img src="{$THEME}/images/minsocial.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://socchel.ru"><img src="{$THEME}/images/uprpodelamobr.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://usznsov.ru"><img src="{$THEME}/images/uprobr.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<br>
<a href="http://www.edu.ru"><img src="{$THEME}/images/edu.png" width="166px" height="58px" style="margin-left:-3px; margin-top:20px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://window.edu.ru"><img src="{$THEME}/images/edinoeokno.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://school-collection.edu.ru"><img src="{$THEME}/images/edinkollekcia.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
<a href="http://fcior.edu.ru"><img src="{$THEME}/images/fedcentrobrresurs.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img>
<a href="http://ipk74.ru"><img src="{$THEME}/images/chipkro.png" width="166px" height="58px" style="margin-left:38px; margin-top:-58px; border-radius:13px; -moz-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); -webkit-box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2); box-shadow: 0 0px 13px rgba(0, 0, 0, 0.2);"></img></a>
</td>
  </tr>
</table>
<div id="toplinefooter" align="center"></div>
<!-- BEGIN FOOTER -->
<div id="footer">
  <div class="left"><strong>© 2013 - 2016, МБУ Центр "Надежда" | </strong><a href="mailto:ddom6_chel@mail.ru">ddom6_chel@mail.ru</a>
  </div>
  {load_menu('bottom_menu')}
  <div class="sp"></div>
</div>
<!-- END FOOTER -->
<!-- Yandex.Metrika counter -->
{literal}<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter17281759 = new Ya.Metrika({id:17281759,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/17281759" style="position:absolute; left:-9999px;" alt="" /></div></noscript>{/literal}
<!-- /Yandex.Metrika counter -->

</body>
</html>