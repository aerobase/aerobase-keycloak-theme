<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("pageExpiredTitle")}
    <#elseif section = "foarm">
        <div class="container">
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Page Expired</div>
                        <#if realm.resetPasswordAllowed>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></div>
                        </#if>
                    </div>

                    <div style="padding-top:30px" class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-warning col-sm-12">
                                <span class="kc-feedback-text">${message.summary}</span>
                            </div>
                        </#if>

		        <p id="instruction1" class="instruction">
            		    ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .
            		    ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
        		</p>
		    </div>
		</div>
	    </div>
	</div>
    </#if>
</@layout.registrationLayout>
