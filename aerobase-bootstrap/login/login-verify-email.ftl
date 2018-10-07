<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Email Verification</div>
                    </div>

                    <div style="padding-top:30px" class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-warning col-sm-12">
                                <span class="kc-feedback-text">${message.summary}</span>
                            </div>
                        </#if>

			<p class="instruction">
			    ${msg("emailVerifyInstruction1")}
			</p>
			<p class="instruction">
			    ${msg("emailVerifyInstruction2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
			</p>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
