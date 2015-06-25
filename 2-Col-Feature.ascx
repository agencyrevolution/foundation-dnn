<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="Nav" Src="inc/nav.ascx" %>
<%@ Register TagPrefix="ar" TagName="Catch" Src="inc/catch.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-feature page-template-2-col">
<ar:Banner runat="server" />

<div class="content-shadow row">
    <ar:Nav runat="server" />

  <section class="feature-wrap primary-color" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />)">
  <div class="feature-wrap-color"></div>
  <div class="row">
    <div class="small-12 columns text-center">
      <h1><%= PortalSettings.ActiveTab.TabName %></h1>
      <div id="FeaturePane" class="feature" runat="server"></div>
    </div>
  </div>
</section>

    <section role="main">
      <div class="row" data-equalizer>

        <div id="TopPane" class="top" runat="server"></div>

          <div class="aside-wrap">
              <div id="ContentSidebar" class="sidebarTop" runat="server"></div> 
              <div id="AsidePane" class="aside" role="complementary" runat="server" ></div>
              <div class="hide-for-small">
                <div id="ContentSidebarBottom" classs="sidebarBottom" runat="server"></div>
              </div>
          </div>

          <div class="content-wrap" data-equalizer-watch>
            <div id="ContentPane" class="content" runat="server" ></div>
          </div>

        <div id="BottomPane" class="bottom" runat="server"></div>

      <div>
    </section>
    
    <ar:Catch runat="server" />
    <ar:ContentInfo runat="server" />

  </div>
</div>

</div>
