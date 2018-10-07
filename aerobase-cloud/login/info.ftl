<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${message.summary}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Confirmation</div>
                    </div>

		    <div style="padding-top:30px" class="panel-body" >
                        <div id="login-alert" class="alert alert-warning col-sm-12">
			    <p class="instruction">${message.summary}<#if requiredActions??><#list requiredActions>: <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></p>
                        </div>

			<#if skipLink??>
			<#else>
			    <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                                <div class="${properties.kcFormButtonsWrapperClass!}">
				    <#if pageRedirectUri??>
					<p><a href="${pageRedirectUri}" class="${properties.kcButtonClass!}">${msg("backToApplication")?no_esc}</a></p>
				    <#elseif actionUri??>
					<p><a href="${actionUri}" class="${properties.kcButtonClass!}">${msg("proceedWithAction")?no_esc}</a></p>
				    <#elseif client.baseUrl??>
					<p><a href="${client.baseUrl}" class="${properties.kcButtonClass!}">${msg("backToApplication")?no_esc}</a></p>
				    </#if>
				</div>
			    </div>
			</#if>
		    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
