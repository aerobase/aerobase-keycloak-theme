<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Error</div>
                    </div>
		
	            <div style="padding-top:30px" class="panel-body" >		
                        <div id="login-alert" class="alert alert-danger col-sm-12">
			    <p class="instruction">${message.summary}</p>
                        </div>

                        <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                            <div class="${properties.kcFormButtonsWrapperClass!}">
		            <#if client?? && client.baseUrl?has_content>
			        <p><a id="backToApplication" class="${properties.kcButtonClass!}" href="${client.baseUrl}">${msg("backToApplication")?no_esc}</a></p>
		            </#if>
			    </div>
		        </div>
		    </div>
		</div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
