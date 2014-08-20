<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<hr class="half-rule">
<footer role="contentinfo">
<div class="footer-top row">
  <div class="small-12 columns text-center">
    <h4>We want to protect what matters most to you.</h4>
    <a class="button" href="/insurance-quotes">Get a Quote</a>
  </div>
</div>
<hr>
<div class="footer-bottom text-center">
  <p class="copyright">&copy; <dnn:Copyright id="Copyright" runat="server" />. Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon</p>

  <ul class="medium-6 medium-centered columns inline-list">
    <dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
    <li><dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /></li>
  </ul>
</div>
</footer>
