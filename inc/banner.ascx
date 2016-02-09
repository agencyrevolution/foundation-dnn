<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>

<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<fortyfingers:STYLEHELPER RemoveCssFile="portal.css"  runat="server" />
<fortyfingers:STYLEHELPER RemoveCssFile="default.css,admin.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER RemoveJsFile="jquery-ui.js,dnn.js,dnn.controls.js,dnncore.js,dnn.modalpopup.js" IfUserMode="None" runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />

<dnn:DnnCssInclude runat="server" FilePath="[skinpath]/inc/plugins/font-awesome/css/font-awesome.min.css" ForceProvider="DnnPageHeaderProvider" Priority="10" />

<link href="https://fonts.googleapis.com/css?family=Oswald:300,400" media="all" type="text/css" property="stylesheet" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" media="all" type="text/css" property="stylesheet" rel="stylesheet"/>

<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner">
  <div class="header-top row full-width" data-equalizer>
    <div class="brand" data-equalizer-watch>
      <dnn:LOGO runat="server" />
    </div> 
    <div class="primary-phone" data-equalizer-watch>
      <div class="primary-phone-content">
         Call Us: 
         <span><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></span>
      </div>
    </div>
  </div>
  <div class="row nav-wrap full-width">
    <div class="left-col">
      <div class="header-wrap">
        <fnn:TopBar runat="server"
        LeftNode="*,0,2"
        LeftExcludes="Home,Admin,Revolution"
        Hover="true"
        />
      </div>
    </div>
    <div class="right-col show-for-medium-up">
     <a href="/contact-us"><i class="fa fa-map-marker"></i>Location & Hours </a><a href="mailto:info@primeinsurance.ca"><i class="fa fa-envelope"></i>Email Us</a>
    </div>
    <div class="right-col connect-icons show-for-small-only">
      <a href="/contact-us"><i class="fa fa-map-marker"></i></a><a href="mailto:info@primeinsurance.ca"><i class="fa fa-envelope"></i></a><a href="tel:<avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />"><i class="fa fa-phone"></i></a>
    </div>
  </div>
</header>
