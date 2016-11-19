<div class="titleExt">
  <h5>{widget('path')}<span class="ext">{$page.title}</span></h5>
</div>

<div id="detail">
  {$page.prev_text}    
</div>

<div id="attachments" class="attachments">
  {if $page.field_file_01}
  <h6 class="attachments-title">Прикрепленные файлы</h6>
  {/if}

  {if $page.field_file_01}
    <a class="file" href="{site_url($page.field_file_01)}" target="_blank" title="{$page.field_description_01}">{$page.field_description_01}</a>
  {/if}

  {if $page.field_file_02}
    <a class="file" href="{site_url($page.field_file_02)}" target="_blank" title="{$page.field_description_02}">{$page.field_description_02}</a>
  {/if}

  {if $page.field_file_03}
    <a class="file" href="{site_url($page.field_file_03)}" target="_blank" title="{$page.field_description_03}">{$page.field_description_03}</a>
  {/if}

  {if $page.field_file_04}
    <a class="file" href="{site_url($page.field_file_04)}" target="_blank" title="{$page.field_description_04}">{$page.field_description_04}</a>
  {/if}

  {if $page.field_file_05}
    <a class="file" href="{site_url($page.field_file_05)}" target="_blank" title="{$page.field_description_05}">{$page.field_description_05}</a>
  {/if}

  {if $page.field_file_06}
    <a class="file" href="{site_url($page.field_file_06)}" target="_blank" title="{$page.field_description_06}">{$page.field_description_06}</a>
  {/if}

  {if $page.field_file_07}
    <a class="file" href="{site_url($page.field_file_07)}" target="_blank" title="{$page.field_description_07}">{$page.field_description_07}</a>
  {/if}

  {if $page.field_file_08}
    <a class="file" href="{site_url($page.field_file_08)}" target="_blank" title="{$page.field_description_08}">{$page.field_description_08}</a>
  {/if}

  {if $page.field_file_09}
    <a class="file" href="{site_url($page.field_file_09)}" target="_blank" title="{$page.field_description_09}">{$page.field_description_09}</a>
  {/if}

  {if $page.field_file_10}
    <a class="file" href="{site_url($page.field_file_10)}" target="_blank" title="{$page.field_description_10}">{$page.field_description_10}</a>
  {/if}
    
</div>

<div class="comments">
  {$comments}
</div>