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
<dnn:DnnCssInclude runat="server" FilePath="inc/plugins/font-awesome/css/font-awesome.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="10" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner">
  <div class="header-top row">
    <div class="logo">
      <a href="/"><img src="/portals/clay/alpine-logo-inside-pages.png"></a>
    </div>
    <div class="primary-phone">
      <p>Call Us: <a class="header-phone" href="tel:4032708822">403.270.8822</a></p>
    </div>
  </div>
  <div class="row nav-wrap full-width">
    <div class="left-col left">
      <div class="header-wrap">
        <fnn:TopBar runat="server"
        RightNode="*,0,2"
        RightExcludes="Home,Admin,Revolution"
        Hover="false"
        />
      </div>
  </div>
  <div class="connect-icons show-for-small-only right">
    <a href="/contact-us"><i class="fa fa-map-marker"></i></a><a href="mailto:#"><i class="fa fa-envelope"></i></a><a href="tel:4032708822"><i class="fa fa-phone"></i></a>
  </div>
  <div class="right-col right">
   <h4><a href="/contact-us"><i class="fa fa-map-marker"></i>Location & Hours </a><a href="mailto:#"><i class="fa fa-envelope"></i>Email Us</a></h4>
  </div>
</header>
