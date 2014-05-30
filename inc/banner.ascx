<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="ar" TagName="Init" Src="~/Admin/AgencyRev/Base/Initilization/Initilization.ascx" %>
<%@ Register TagPrefix="fnn" TagName="TopBar" Src="~/Admin/AgencyRev/Framework/Foundation/Components/Top-bar.ascx" %>

<ar:Init runat='server'/>
<dnn:DnnCssInclude runat="server" FilePath="css/build/prefixed/skin.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="15" />
<dnn:DnnJsInclude runat="server" FilePath="bower_components/modernizr/modernizr.js" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="1" />
<dnn:DnnJsInclude runat="server" FilePath="bower_components/foundation/js/foundation.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="10" />
<dnn:DnnJsInclude runat="server" FilePath="js/build/production.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" Priority="20" />
<dnn:Meta Name="viewport" Content="width=device-width, height=device-height, initial-scale=1, minimal-ui" runat="server" />

<div class="header-wrap">
  <fnn:TopBar runat="server"
    RightNode="*,0,2"
    RightExcludes="Home,Admin,Revolution"
    Hover="false"
  />
</div>
