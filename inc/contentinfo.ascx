<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer role="contentinfo">
  <div class="footer-top row">
    <div class="small-12 columns text-center">
      <h4>Don't Delay</h4>
      <a class="button" href="/insurance-quotes">Quote Today!</a>
    </div>
  </div>

  <div class="footer-bottom row">
    <div class="footer-nav">
      <h4>Find out more</h4>
      <ul class="footer-list">
        <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
      </ul>
    </div>
    <div class="footer-connected">
      <h4>Stay connected</h4>
      <a href="/blog">Read Our Blog</a><br>
      <a href="https://twitter.com/CharlotteIns" target="_blank"><i class="fa fa-twitter"></i></a> <a href="https://www.facebook.com/CharlotteInsurance" target="_blank"><i class="fa fa-facebook"></i></a> <a href="http://www.linkedin.com/company/charlotte-insurance?trk=copro_tab" target="_blank"><i class="fa fa-linkedin"></i></a>
    </div>
    <div class="footer-office">

      <h4>Main Office</h4>

      <div class="office-right">

        <div class="address" itemscope itemtype="http://schema.org/LocalBusiness">
          <span itemprop="name"><%=PortalSettings.PortalName %></span>
          <span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
          <div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
            <span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span><br>
            <span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
            <span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
            <span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
          </div>
          <span itemprop="telephone"><a href="tel:<avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></a></span>
        </div>

      </div>

    </div>
    <div class="footer-hours">
        <h3>Hours</h3>
        <p>9:00am - 5pm, M - F</p>

      </div>




    <div class="footer-copyright">
      <dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> | &copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon.
    </div>

  </div>
</footer>
