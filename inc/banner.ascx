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
<dnn:DnnCssInclude runat="server" FilePath="inc/plugins/font-awesome/css/font-awesome.min.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="10" />
<dnn:DnnJsInclude runat="server" FilePath="dist/js/skin.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="4" />

<header role="banner">
	<div class="header-wrap">
			<div class="row" data-equalizer>
				<div class="header-logo" data-equalizer-watch>
					<dnn:LOGO runat="server" />
				</div>
				<div class="header-details" data-equalizer-watch>
					<div class="header-phone">
						<i class="fa fa-phone"></i> <avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />
					</div>
				</div>
			</div>
		<div class="contain-to-grid nav-wrap">
			<fnn:TopBar runat="server"
				LeftNode="*,0,2"
				LeftExcludes="Home,Admin,Revolution"
				Hover="true"
			/>
		</div>
	</div>
</header>
