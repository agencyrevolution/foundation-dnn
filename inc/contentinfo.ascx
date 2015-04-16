<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer role="contentinfo">
<div class="footer-top footer-container">
  <div class="row">
    <div class="medium-8 columns">
      <h4>Let us protect what matters most to you.</h4>
    </div>
    <div class="medium-4 columns">
      <a class="button secondary" href="/insurance-quotes">Get a Quote Today</a>
    </div>
  </div>
</div>
<div class="footer-middle footer-container">
  <div class="row">

    <div class="medium-4 columns">
      <a href="/"><img src="<%= PortalSettings.HomeDirectory %><%= PortalSettings.LogoFile %>?mw=150&tw=150&dw=150" alt="<%= PortalSettings.PortalName %>"></a>
      <a href="http://www.ibao.org/" target="_blank"><img src="<%= PortalSettings.ActiveTab.SkinPath %>images/ibao.png?mw=100&tw=100&dw=100" alt="<%= PortalSettings.PortalName %>"></a>
      <p>&nbsp;</p>
      <p class="site-description"><%= PortalSettings.Description %></p>

      <h6>Located at</h6>
        <div class="address" itemscope itemtype="http://schema.org/LocalBusiness">
          <span itemprop="name" class="hide"><%=PortalSettings.PortalName %></span>
          <span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
          <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
            <span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span><br>
            <span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
            <span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
            <span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
          </div>
          Phone: <span itemprop="telephone"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></span>
          <a itemprop="url" class="hide" href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%>"><%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%></a>
        </div>
    </div>

    <div class="medium-5 columns">
      <h6>Recent News</h6>
      <ul class="no-bullet" id="result"></ul>
    </div>

    <div class="medium-3 columns">
      <h6>Need More?</h6>
      <ul class="no-bullet">
      <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home, Index, Admin, Revolution" runat="server" />
      </ul>
    </div>

  </div>
</div>
<div class="footer-bottom footer-container">
  <div class="row">
    <div class="copyright small-12 columns">&copy; <dnn:Copyright id="Copyright" runat="server" /> | Pieced together by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon</div>
  </div>
</div>
</footer>
