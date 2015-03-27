<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<footer role="contentinfo">
	<div class="footer-bottom">
		<div class="row">
			<div class="footer-nav">
				<h4>Navigation</h4>
				<ul class="footer-list">
					<dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" ExcludeNodes="Home,Admin,Revolution,Insurance Quotes,Personal Insurance,Business Insurance,Business,Personal" runat="server" ></dnn:Menu>
				</ul>
			</div>

			<div class="footer-insurance">
				<h4>Insurance</h4>
	      <ul class="footer-list">
					<dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,1,2" IncludeNodes="Personal Insurance,Business Insurance,Personal,Business" runat="server" ></dnn:Menu>
				</ul>
			</div>

			<div class="footer-research">
				<h4>Research</h4>
				<ul class="footer-list">
					<dnn:Menu MenuStyle="/admin/AgencyRev/Framework/Foundation/Menus/menu-list" NodeSelector="*,0,2" IncludeNodes="Research Center,Research Centre" runat="server" ></dnn:Menu>
				</ul>
			</div>

			<div class="footer-office">
				<h4>Main Office</h4>
				<div class="address" itemscope itemtype="http://schema.org/LocalBusiness">
					<span itemprop="name"><%=PortalSettings.PortalName %></span>
					<span itemprop="description" class="hide"><%=PortalSettings.ActiveTab.Description %></span>
					<div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
							<span itemprop="streetAddress"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" /></span><br>
							<span itemprop="addressLocality"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" /></span>, 
							<span itemprop="addressRegion"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" /></span>
							<span itemprop="postalCode"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" /></span>
					</div>
				</div>
			</div>

			<div class="footer-content">
				<div id="FooterContentPane" class="footer-content-pane" runat="server"></div>
			</div>
		</div>
	</div>

	<div class="footer-info">
		<div class="row">
			<div class="footer-copyright">
			<dnn:Login runat="server" id="dnnLogin" Text="Sign In" LogoffText="Sign Out" /> | &copy; <dnn:Copyright id="Copyright" runat="server" /> Made by <a href="http://www.agencyrevolution.com">Agency Revolution</a> in Oregon.
		</div>
		<div class="footer-social">
			<a href="#"><i class="fa fa-twitter-square"></i></a> 
			<a href="#"><i class="fa fa-facebook-square"></i></a> 
			<a href="#"><i class="fa fa-linkedin-square"></i></a>
		</div>
		</div>	
	</div>
</footer>
