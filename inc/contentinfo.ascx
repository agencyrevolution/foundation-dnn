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
      <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a> <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a> <a href="https://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
    </div>
    <div class="footer-office">
      <div class="row">
        <h4>Main office</h4>
        <p class="main-office"><strong>Alpine Insurance </strong><br/>
          300-5824 - 2 St SW<br/>
          Calgary, AB T2H 0H2
        </p>
        <p class="main-office-phone">
          <a href="tel:4032708822">(403) 270-8822</a><br/>
          <a href="tel:8777708822">(877) 770-8822</a></p>
      </div>
    </div>
    <div class="footer-hours">
      <div class="row">
        <h4>Hours</h4>
        <p><strong>M - F</strong> 8:30am to 5:00pm</p>
      </div>
    </div>
    <div    class="footer-copyright">
      <dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> | &copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon.
    </div>
  </div>
</div>
</footer>
