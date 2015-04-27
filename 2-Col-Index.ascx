<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="Catch" Src="inc/catch.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-index page-template-2-col">
<ar:Banner runat="server" />

<section class="homepage-hero" data-equalizer>
  
  <div class="row full-width">
    <dnn:MENU MenuStyle="inc/menu/homepagehero" IncludeNodes="#HomepageHero" id="HomepageHero" runat="server"></dnn:MENU>
    <div class="homepage-hero-content">&nbsp;</div>
    <div class="homepage-hero-sidebar">

      <div class="quick-quote row" data-equalizer-watch>
        <div id="QuickQuoteTitle" class="quick-quote-title" runat="server"></div>
          <div class="qq-col">
            <select id="e_1" class="e_1"> 
              <dnn:MENU MenuStyle="inc/menu/quickquote" IncludeNodes="#QuoteSelect" id="QuickQuoteMenu" runat="server"></dnn:MENU>
            </select>
          </div>
          <div class="qq-col2">
              <input id="e_2" class="e_2 hint" maxlength="5" value="Zip Code" type="text">
          </div>
          <div class="qq-col3">
              <div id="saveForm" class="button expand"><i class="fa fa-check"></i></div>
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

    </div>
    
  </div>
</section>

<section class="tagline">
  <div class="row">
    <div id="TaglineSidebar" class="tagline-sidebar" runat="server"></div>
    <div id="TaglineContent" class="tagline-content" runat="server"></div>
  </div>
</section>

<section class="secondary-hero">
  <div class="row">
    <dnn:MENU MenuStyle="inc/menu/secondaryhero" IncludeNodes="#SecondaryHero" id="SecondaryHero" runat="server"></dnn:MENU>
  </div>
</section>

<section role="main">
  <div id="TopPane" class="top" runat="server"></div>
  <div class="row">
    <div id="AsidePane" class="aside" role="complementary" runat="server"></div>
    <div id="ContentPane" class="content" runat="server"></div>
  </div>
  <div id="BottomPane" class="bottom" runat="server"></div>
</section>
<ar:Catch runat="server" />
<ar:ContentInfo runat="server" />
</div>
