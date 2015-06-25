<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization2.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %>

<fortyfingers:STYLEHELPER ID="SH1" RemoveCssFile="default.css" IfUserMode="None" runat="server" />
<fortyfingers:STYLEHELPER ID="SH2" RemoveCssFile="portal.css"  runat="server" />

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="dist/css/skin.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="6" />
<dnn:DnnCssInclude runat="server" FilePath="plugins/font-awesome/css/font-awesome.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="10" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner">
	<div class="row">
		<div class="header-wrap">
			<div class="header-logo">
				<dnn:LOGO runat="server" />
			</div>
			<div class="header-details ">
				<div class="header-col ">
					<div class="header-phone">
						Call Us
						<span itemprop="telephone"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></span>
					</div>
					<div class="header-icon">
						<i class="fa fa-phone"></i>
					</div>
				</div>
				<div class="header-col hide-for-small">
					<div class="header-hours">
						Monday - Friday
						<span>8:00am - 5:00pm</span>
					</div>
					<div class="header-icon">
						<i class="fa fa-clock-o"></i>
					</div>
				</div>
			</div>	
		</div>
	</div>
</header>
