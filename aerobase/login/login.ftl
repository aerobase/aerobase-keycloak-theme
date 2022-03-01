<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if properties.mobileLogin = "true" >
        <div class="pf-c-tabs" id="default-example" style="margin-top: 20px;">
            <ul class="nav nav-tabs">
                <li id="usernameLogin" class="active"><a href="javascript:void(0);">${msg("usernameLogin")}</a></li>
                <li id="mobileLogin" class=""><a href="javascript:void(0);">${msg("mobileLogin")}</a></li>
            </ul>
        </div>
        </#if>
        <div style="margin-top: 20px;">
            <section class="pf-c-tab-content" id="refTabUserName" aria-label="Login with Username & Password" role="tabpanel" tabindex="0" data-ouia-component-type="PF4/TabContent" data-ouia-safe="true">
            <#if realm.password>
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="${properties.kcFormGroupClass!}">
                        <label id="usernameLabel" for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                        <label id="mobileUsernameLabel" for="username" class="${properties.kcLabelClass!} hidden">${msg("mobileUsername")}</label>
                        <#if usernameEditDisabled??>
                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled />
                        <#else>
                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
                        </#if>
                    </div>
                    <div class="${properties.kcFormGroupClass!}">
                        <label id="passwordLabel" for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                        <label id="mobilePasswordLabel" for="password" class="${properties.kcLabelClass!} hidden">${msg("mobilePassword")}</label>
                        <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" autocomplete="off" />
                    </div>

                    <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                        <div id="kc-form-options">
                            <#if realm.rememberMe && !usernameEditDisabled??>
                                <div class="checkbox">
                                    <label>
                                        <#if login.rememberMe??>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                        <#else>
                                            <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                        </#if>
                                    </label>
                                </div>
                            </#if>
                            </div>
                            <div class="${properties.kcFormOptionsWrapperClass!}">
                                <#if realm.resetPasswordAllowed>
                                    <span><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                                </#if>
                            </div>
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                        <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                    </div>
            <img src="https://aerobase.io/assets/base/img/layout/tracking.png" alt="" style="position:absolute; visibility:hidden"/>
                </form>
            </#if>
            </div>
            <#if realm.password && social.providers??>
                <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
                    <ul class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
                        <#list social.providers as p>
                            <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></li>
                        </#list>
                    </ul>
                </div>
            </#if>                        
            </section>
        </div>
      </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>
    <script type="text/javascript" src="${url.resourcesCommonPath}/node_modules/jquery/dist/jquery.min.js"></script>
    <#if locale??>
      <#if locale.currentLanguageTag == "de">
        <script>
          $('#kc-content').load('url', function() {
    	       $( this ).addClass("kc-right");
		  });
        </script>
      </#if>
    </#if>
    <#if properties.mobileLogin = "true" >
    <script>
        $( "#mobileLogin" ).click(function() {
            $( this ).addClass("active");
            $( "#usernameLogin" ).removeClass( "active" );
            $( "#mobilePasswordLabel" ).removeClass( "hidden" );
            $( "#passwordLabel" ).addClass( "hidden" );
            $( "#mobileUsernameLabel" ).removeClass( "hidden" );
            $( "#usernameLabel" ).addClass( "hidden" );
        });
        $( "#usernameLogin" ).click(function() {
            $( this ).addClass("active");
            $( "#mobileLogin" ).removeClass( "active" );
            $( "#passwordLabel" ).removeClass( "hidden" );
            $( "#mobilePasswordLabel" ).addClass( "hidden" );
            $( "#usernameLabel" ).removeClass( "hidden" );
            $( "#mobileUsernameLabel" ).addClass( "hidden" );
        });
    </script>
    </#if>
</@layout.registrationLayout>
