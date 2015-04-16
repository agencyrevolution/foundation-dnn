<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="Offcanvas" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Offcanvas.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<fortyfingers:STYLEHELPER ID="SH1" RemoveCssFile="default.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER ID="SH2" RemoveCssFile="portal.css"  runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/jquery.mobile.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="5" />
<fnn:Offcanvas MenuNode="RootOnly" Align="right" runat="server" />

<header role="banner">
  <nav class="top-nav">
    <div class="top-nav-section">
      <a class="top-nav-logo" href="/">
        <img src="<%= PortalSettings.HomeDirectory %><%= PortalSettings.LogoFile %>?mw=150&tw=250&dw=350" alt="<%= PortalSettings.PortalName %>">
      </a>
      <ul class="top-nav-menu hide-for-small">
        <li class="top-nav-phone">Call <avt:MyTokens runat="server" Token="[RevTemplate:Standard.TollFreeNumber]" /></li>
        <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-drop" IncludeNodes="#Navigation" id="menu" runat="server" />
      </ul>
    </div>
    <div class="right-small"><a class="right-off-canvas-toggle menu-icon" href="#">Menu <span></span></a></div>
  </nav>
</header>


