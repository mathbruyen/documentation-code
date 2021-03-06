{Template {
  $classpath : "samples.utils.validators.basic.CustomizedErrorList",
  $hasScript : true
}}

  {macro main()}
    {if data.messages.length > 0}
      <div style="border: solid #AB9B85 2px; padding: 10px 10px 10px 10px;">
        <div style="position: absolute;">
          {@aria:Icon {icon: getIcon()}/}
        </div>
        <div style="padding-left: 32px;">
          {if data.messages.length == 1}
            ${data.messages[0].localizedMessage}
          {else/}
            There are several errors on the page. Please correct them and try again.
          {/if}
        </div>

      </div>
    {/if}
  {/macro}

{/Template}