<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<div class="footer-top">
  <div class="row">
    <div class="medium-7 columns">
      <h2>We care about you</h2>
      <p><em>Life happens, and we are there for you when it does.
        7 days a week we strive to protect you every step of the way.</em></p>
    </div>
    <div class="text-center medium-5 columns">
      <a class="button success large radius" href="/">Get a Quote Today</a>
    </div>
  </div>
</div>
<div class="footer-bottom text-center">
  <div class="row">
    <div class="small-12 columns">
      <ul class="links inline-list">
        <dnn:Menu MenuStyle="inc/menu/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
        <li><dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /></li>
      </ul>
      <p class="copyright">&copy; <dnn:CurrentDate DateFormat="yyyy" runat="server" /> <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon</p>
      <div class="address" itemscope itemtype="http://schema.org/LocalBusiness">
        <span itemprop="name" class="hide"><%=PortalSettings.PortalName %></span>
        <span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
        <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
          <span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span>
          <span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
          <span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
          <span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
        </div>
        <span itemprop="telephone" class="hide"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></span>
        <a itemprop="url" class="hide" href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%>"><%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%></a>
      </div>
    </div>
  </div>
</div>
