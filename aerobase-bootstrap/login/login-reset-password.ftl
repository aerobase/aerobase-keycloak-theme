<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=false; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Reset Password</div>
                    </div>

                    <div style="padding-top:30px" class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-danger col-sm-12">
                                <span class="kc-feedback-text">${message.summary!''}</span>
                            </div>
                        </#if>

                        <div id="login-warn" class="alert alert-warning col-sm-12">
                            <span class="kc-feedback-text">${msg("emailInstruction")}</span>
                        </div>

			<form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
		 	        <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus  placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
			    </div>

                            <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                                <div class="${properties.kcFormButtonsWrapperClass!}">
				     <a class="${properties.kcButtonClass!}" href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
				     <input class="${properties.kcButtonClass!}" type="submit" value="${msg("doSubmit")}"/>
				</div>
			    </div>
			</form>
                    </div>
                </div>
            </div>
        </div>
    <#elseif section = "info" >
    </#if>
</@layout.registrationLayout>
