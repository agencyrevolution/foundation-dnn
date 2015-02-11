<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-sidebar page-template-2-col">
<ar:Banner runat="server" />

<section role="main">
  <div id="TopPane" class="top" runat="server"></div>
  <div class="row">
    <div class="aside" role="complementary">
    	<div id="AsidePane" runat="server"></div>
      	<dnn:MENU ID="aside" MenuStyle="inc/menu/revvertical" ExcludeNodes="Index,Admin,Revolution,Vortexes,fr" runat="server"></dnn:MENU>
      	<div id="AsidePaneBottom" runat="server"></div> 
    </div>
    <div id="ContentPane" class="content" runat="server"></div>
  </div>
  <div id="BottomPane" class="bottom" runat="server"></div>
</section>

<ar:ContentInfo runat="server" />
</div>
