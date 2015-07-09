<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-index page-template-2-col">
<ar:Banner runat="server" />

<section class="homepage-hero" data-equalizer>
  <div class="row">
    <div class="homepage-hero-content" data-equalizer-watch>
      <dnn:LOGO runat="server" />
      <div class="qq-col">
        <select id="e_1" class="e_1"> 
          <dnn:MENU MenuStyle="inc/menu/quickquote" IncludeNodes="#QuoteSelect" id="QuickQuoteMenu" runat="server"></dnn:MENU>
        </select>
      </div>
      <div class="qq-col2">
        <input id="e_2" class="e_2 hint" maxlength="10" value="Postal Code" type="text">
      </div>
      <div class="qq-col3">
        <div id="saveForm" class="button expand success radius">Get a Quote Now</div>
      </div> 
      <script>   
      function getQuote(){ 
      location.href = $("#e_1 option:selected").val() + "#quote/" + $("#e_2").val(); 
      }
      $("#saveForm").click(function () {
      getQuote();
      return false; 
      });
      $("#e_2").keypress(function(a) { 
      if (a.keyCode == 13) { 
      getQuote();
      return false;
      } 
      });
      $("#e_2").focus(function(){
      $(this).removeClass("hint").val("")
      });
      </script>
    </div>
    <div class="homepage-hero-sidebar">
      <dnn:MENU MenuStyle="inc/menu/homepagehero" IncludeNodes="#HomepageHero" id="HomepageHero" runat="server"></dnn:MENU>
    </div>
  </div>
</section>

<section class="secondary-hero">
  <div class="row">
    <dnn:MENU MenuStyle="inc/menu/gridsimple" IncludeNodes="#SecondaryHero" runat="server"></dnn:MENU>
  </div>
</section>

<hr>

<section role="main">
  <div id="TopPane" class="top" runat="server"></div>
  <div class="row">
    <div id="ContentPane" class="content" runat="server"></div>
    <div id="AsidePane" class="aside" role="complementary" runat="server"></div>
  </div>
  <div id="BottomPane" class="bottom" runat="server"></div>
</section>

<ar:ContentInfo runat="server" />
</div>
