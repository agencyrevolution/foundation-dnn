<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" TagName="CurrentDate" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<section class="niche-slider">
  <div class="row">
    <div class="niche-content">
      <div class="niche-slider">
        <div class="niche-item">
          <fnn:RelatedMenu MenuStyle="menu/secondaryhero"IncludeNodes="SecondaryHero" id="SecondaryHero" runat='server'/>
        </div>
        <div class="niche-item">
        </div>
      </div>
    </div>
  </div>
</section>
