<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="Catch" Src="inc/catch.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-index page-template-2-col">
<ar:Banner runat="server" />

<section class="homepage-hero" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]' />)">
  <div class="row">

    <dnn:MENU MenuStyle="inc/menu/homepagehero" IncludeNodes="#HomepageHero" id="HomepageHeroMenu" runat="server"></dnn:MENU>

  </div>
</section>

<section class="tagline">
    <div class="row tagline-wrap" data-equalizer>
        <div class="quick-quote" data-equalizer-watch>
            <div class="qq-col">
                <select id="e_1" class="e_1"> 
                <dnn:MENU MenuStyle="inc/menu/quick-quote" IncludeNodes="#QuoteSelect" id="QuickQuoteMenu" runat="server"></dnn:MENU>
            </select>
            </div>
            <div class="qq-col">
                <input id="e_2" class="e_2 hint" maxlength="10" value="Postal Code" type="text">
            </div>
            <div class="qq-col">
                <div id="saveForm" class="button expand"><i class="fa fa-check"></i> Get a Quote Now</div>
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
        <div class="tagline-call" data-equalizer-watch>
          <div class="or-call">or call</div>
          <div><i class="fa fa-phone"></i><avt:MyTokens runat = 'server' Token = '[RevTemplate:Standard.LocalNumber]' /></div>
        </div>
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
