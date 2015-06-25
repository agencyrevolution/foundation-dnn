<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="fnn" TagName="RelatedMenu" src="~/admin/AgencyRev/Framework/Foundation/Extensions/Related-content.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="Nav" Src="inc/nav.ascx" %>
<%@ Register TagPrefix="ar" TagName="Catch" Src="inc/catch.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<div class="page-template page-template-index page-template-2-col">
<ar:Banner runat="server" />

<div class="content-shadow row">
    <ar:Nav runat="server" />

    <section class="homepage-hero">
      <div class="row" data-equalizer>
        <div class="homepage-hero-content" data-equalizer-watch>
          <div id="FeaturedPane" class="feature" runat="server"></div> 
        </div>
        <div class="homepage-hero-sidebar" data-equalizer-watch>
          <div class="panel quickquote">
              <h3>Get a Quote</h3>
              <select class="quote-niche" id="element_2" name="element_2">
                <fnn:RelatedMenu MenuStyle="inc/menu/quickquote" IncludeNodes="#QuoteSelect" id="QuickQuoteMenu" runat='server'/>
              </select>
              <input class="quote-zip" maxlength="7" value="" id="element_1" name="element_1" type="text" placeholder="Postal Code">
              <input class="quote-submit button success expand" value="Get Quote" type="submit">
          </div>
            <script> $(function(){ $(".quote-zip").keypress(function(a) { if (a.keyCode == 13) { getQuote(); return false;} }); $(".quote-submit").click(function() { getQuote(); return false; }); }); function getQuote(){ location.href= document.forms[0].element_2.value + '#quote/' + document.forms[0].element_1.value; } </script>
        </div>
        
      </div>
    </section>

    <section role="main">
      <div class="row" data-equalizer>

        <div id="TopPane" class="top" runat="server"></div>

          <div class="content-wrap" data-equalizer-watch>
            <div id="ContentPane" class="content" runat="server" ></div>
          </div>

          <div class="aside-wrap" data-equalizer-watch> 
            <div id="AsidePane" class="aside" role="complementary" runat="server" ></div>
          </div>

        <div id="BottomPane" class="bottom" runat="server"></div>

      <div>
    </section>

    <ar:Catch runat="server" />
    <ar:ContentInfo runat="server" />

  </div>
</div>

</div>
