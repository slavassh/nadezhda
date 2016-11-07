<div style="border-top-left-radius:9px; border-bottom-left-radius:0px;" id="titleExt"><h5>{widget('path')}<span class="ext">{lang('lang_register')}</span></h5></div>

{if validation_errors() OR $info_message}
    <div class="errors"> 
        {validation_errors()}
        {$info_message}
    </div>
{/if}

<form style="margin-left:10px;" action="" class="form" method="post">

	<div class="comment_form_info">
	
	<div class="textbox">
        <label for="username" class="left" style="color:#333333;"><strong>{lang('lang_login')}</strong></label>
        <input type="text" size="30" name="username" id="username" value="{set_value('username')}"/>
    </div>
	
	<div class="textbox_spacer"></div>
	
    <div class="textbox">
        <label for="email" class="left" style="color:#333333;"><strong>{lang('lang_email')}</strong></label>
        <input type="text" size="30" name="email" id="email" value="{set_value('email')}" />
    </div>

    <div class="textbox">
        <label for="password" class="left" style="color:#333333;"><strong>{lang('lang_password')}</strong></label>
        <input type="password" size="30" name="password" id="password" value="{set_value('password')}" />
    </div>
	
	<div class="textbox_spacer"></div>

    <div class="textbox">
        <label for="confirm_password" class="left" style="color:#333333;"><strong>{lang('lang_confirm_password')}</strong></label>
        <input type="password" class="text" size="30" name="confirm_password" id="confirm_password" />
    </div>
	</div>
    
	{if $cap_image}
    <div class="comment_form_info">
    <div class="textbox captcha">
        <input type="text" name="captcha" id="captcha" value="Код протекции" onfocus="if(this.value=='Код протекции') this.value='';" onblur="if(this.value=='') this.value='Код протекции';"/>
   	</div>
    {$cap_image}
    </div>
    {/if}
 
    <p class="clear">
        <label for="submit" class="left">&nbsp;</label> 
        <input type="submit" id="submit" class="submit" value="{lang('lang_submit')}" />
    </p>

	
    <label class="left">&nbsp;</label> 
    <a style="color:#666666; border-bottom:1px dotted #666666; text-decoration:none" href="{site_url($modules.auth . '/forgot_password')}">{lang('lang_forgot_password')}</a>
    &nbsp;
    <a style="color:#666666; border-bottom:1px dotted #666666; text-decoration:none" href="{site_url('auth/login')}">Вход</a>

{form_csrf()}
</form>
<br>
<br>
