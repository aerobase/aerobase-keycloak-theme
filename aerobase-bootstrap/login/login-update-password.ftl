<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Update Password</div>
                    </div>

                    <div style="padding-top:30px" class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-warning col-sm-12">
                                <span class="kc-feedback-text">${message.summary!''}</span>
                            </div>
                        </#if>

			<form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
			    <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
			    <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

		            <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}" autofocus autocomplete="new-password" placeholder="${msg("passwordNew")}"/>
			    </div>

                            <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!}" autocomplete="new-password" placeholder="${msg("passwordConfirm")}"/>
			    </div>

                            <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                                <div class="${properties.kcFormButtonsWrapperClass!}">
				    <input class="${properties.kcButtonClass!}" type="submit" value="${msg("doSubmit")}"/>
				</div>
			    </div>
			</form>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
