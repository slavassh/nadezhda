<div style="border-top-left-radius:9px; border-bottom-left-radius:0px;" class="titleExt"><h5>{widget('path')}<span class="ext">{lang('lang_forgot_password')}</span></h5></div>

{if validation_errors() OR $info_message}
    <div class="errors"> 
        {validation_errors()}
        {$info_message}
    </div>
{/if}

<form style="margin-left:10px;" action="" class="form" method="post">

	<div class="comment_form_info">
	
    <div class="textbox">
        <input type="text" size="30" name="login" id="login" value="{lang('lang_username_or_mail')}" onfocus="if(this.value=='{lang('lang_username_or_mail')}') this.value='';" onblur="if(this.value=='') this.value='{lang('lang_username_or_mail')}';" />
    </div>
	
	<br /><br /><br /><br />
    <input type="submit" id="submit" class="submit" value="{lang('lang_submit')}" />
	
    <br/><br />
	</div>
    <label class="left">&nbsp;</label> 
    <a style="color:#666666; border-bottom:1px dotted #666666; text-decoration:none" href="{site_url('auth/login')}">Вход</a>
    &nbsp;
    <a style="color:#666666; border-bottom:1px dotted #666666; text-decoration:none" href="{site_url($modules.auth . '/register')}">{lang('lang_register')}</a><a href="{site_url($modules.auth . '/register')}"></a>

{form_csrf()}
</form>
<br>
<br>