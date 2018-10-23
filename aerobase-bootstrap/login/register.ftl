<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <#if realm.resetPasswordAllowed>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></div>
                        </#if>
                    </div>

                    <div style="padding-top:30px" class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-danger col-sm-12">
                                <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                            </div>
                        </#if>

			<form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" placeholder="${msg("firstName")}" />
			    </div>

			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" placeholder="${msg("lastName")}"/>
			    </div>

			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
				<input type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')}" autocomplete="email" placeholder="${msg("email")}"/>
			    </div>

			    <#if !realm.registrationEmailAsUsername>
			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" autocomplete="username" placeholder="${msg("username")}"/>
			    </div>
			    </#if>

			    <#if passwordRequired>
			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" id="password" class="${properties.kcInputClass!}" name="password" autocomplete="new-password" placeholder="${msg("password")}"/>
			    </div>

			    <div style="margin-bottom: 25px" class="${properties.kcInputWrapperClass!}">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" placeholder="${msg("passwordConfirm")}"/>
			    </div>
			    </#if>

			    <#if recaptchaRequired??>
			    <div class="form-group">
				<div class="${properties.kcInputWrapperClass!}">
				    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
				</div>
			    </div>
			    </#if>

                            <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                                <div class="${properties.kcFormButtonsWrapperClass!}">
				    <input class="${properties.kcButtonClass!}" type="submit" value="${msg("doRegister")}"/>
				</div>
			    </div>
			</form>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
