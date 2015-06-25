<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer role="content-info">

	<div class="row footer">

		<div class="footer-nav">

			<h4>Find out more</h4>

			<ul class="footer-list">
				<dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution" runat="server" ></dnn:Menu>
			</ul>

		</div>

		<div class="footer-connected">

			<h4>Stay connected</h4>
			<a href="/blog">Read Our Blog</a><br>
			<a href="#"><i class="fa fa-facebook-square"></i></a>
			<a href="#"><i class="fa fa-twitter-square"></i></a>
			<a href="#"><i class="fa fa-linkedin-square"></i></a>
 
		</div>

		<div class="footer-office">

			<h4>Main office</h4>
				<div class="office-left">

					<div class="address" itemscope itemtype="http://schema.org/LocalBusiness">
    					<span itemprop="name"><%=PortalSettings.PortalName %></span>
    					<span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
    						<div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
        						<span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span>
        						<span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
        						<span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
        						<span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
    						</div>
    						Phone: <span itemprop="telephone"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></span>
    						<a itemprop="url" class="hide" href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%>"><%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%></a>
						</div>
						Fax: [Fax]<br>
						Toll Free: [TollFree] <br>
						Email: [Email]
				</div>
				<div class="office-right">
					Hours: [Hours]<br>
				</div>	

		</div>

		<div class="footer-copyright">
			<dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> | &copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon.
		</div>

	</div>

</footer>