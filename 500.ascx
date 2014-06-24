<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.UI.Skins" Assembly="DotNetNuke" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>
<dnn:DnnCssInclude runat="server" FilePath="css/build/prefixed/skin.css" PathNameAlias="SkinPath" ForceProvider="DnnPageHeaderProvider" Priority="15" />

<ar:Banner runat="server" />

<section id="oops">
  <div class="row">
    <div class="large-9 medium-9 small-12 columns small-centered">
      <h5>404: Page Not Found</h5>
      <h1 class="oversized">Keep on looking...</h1>

      <p class="lead bottom40">Double check the URL or head back to the <a href="/">homepage.</a> If you continue to get this page, email us at <a href="mailto:info@<%= PortalSettings.PortalAlias.HTTPAlias %>.com">info@<%= PortalSettings.PortalAlias.HTTPAlias %>.</a></p>

      <h3>Or try one of these:</h3>
      <ul>
        <li><a href="/blog" class="">What's new with <%= PortalSettings.PortalName %></a></li>
        <li><a href="/for-individuals"><%= PortalSettings.PortalName %> Lines</a></li>
        <li><a href="/client-service/claims">Claims with <%= PortalSettings.PortalName %></a></li>
      </ul>
    </div>
  </div>
</section>

<ar:ContentInfo runat='server'/>
