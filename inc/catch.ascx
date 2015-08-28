<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<section class="catch">
  <div class="row catch-row">
    <div class="catch-content">
      <div class="catch-wait">
        <h3>Don't Wait.</h3>
        Get a quote today!
      </div>
      <div class="catch-button">
        <a href="/personal" class="button"><i class="fa fa-check"></i> Start Now</a>
      </div>
      <div class="catch-vs">
        <div class="vs-content">or</div>
      </div>
      <div class="catch-call">
        Call Us At <br>
        <span><a href="tel:<avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" />"><avt:MyTokens runat="server" Token="[RevTemplate:Standard.LocalNumber]" /></a></span>
      </div>
    </div>
  </div>
</section>
