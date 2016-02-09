<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="ar" TagName="Banner" Src="inc/banner.ascx" %>
<%@ Register TagPrefix="ar" TagName="ContentInfo" Src="inc/contentinfo.ascx" %>

<%@ Register TagPrefix="ar" TagName="Testimonial" Src="inc/testimonial.ascx" %>

<div class="page-template page-template-index page-template-2-col">

  <ar:Banner runat="server" />

  <section class="homepage-hero primary-color" style="background-image: url(<avt:MyTokens runat='server' Token='[Tab:Iconfilelarge]?dw=1280&tw=1024&mw=640' />)">
  </section>

  <section class="quick-quote">
    <div class="row full-width">
      <div class="qq-col">
        <select id="e_1" class="e_1"> 
          <dnn:MENU MenuStyle="inc/menu/quickquote" IncludeNodes="#QuoteSelect" id="QuickQuoteMenu" runat="server"></dnn:MENU>
        </select>
      </div>
      <div class="qq-col2">
        <input id="e_2" class="e_2 hint" maxlength="5" value="Postal Code" type="text">
      </div>
      <div class="qq-col3">
        <div id="saveForm" class="button warning expand">Request a Quote<i class="fa fa-chevron-right"></i></div>
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
  </section>

  <section class="tagline">
    <div class="row">
      <div id="TaglineSidebar" class="tagline-sidebar" runat="server"></div>
      <div id="TaglineContent" class="tagline-content" runat="server"></div>
    </div>
  </section>

  <section class="secondary-hero">
    <div class="row full-width" data-equalizer>
      <div class="secondary-hero-sidebar" data-equalizer-watch>
        <div class="secondary-hero-col">
          <div id="TestimonialPane" class="testimonial-heading" runat="server"></div>
          <ar:Testimonial runat="server" />
        </div>   
      </div>
      <div class="secondary-hero-content" data-equalizer-watch>
        <div class="secondary-hero-col">
          <dnn:MENU MenuStyle="inc/menu/secondaryhero" IncludeNodes="#SecondaryHero" id="SecondaryHero" runat="server"></dnn:MENU>
        </div>   
      </div>
    </div>
  </section>

  <section role="main">
    <div class="row">  
      <div id="TopPane" class="top" runat="server"></div>
      <div id="AsidePane" class="aside" role="complementary" runat="server"></div>
      <div id="ContentPane" class="content" runat="server"></div>
      <div id="BottomPane" class="bottom" runat="server"></div>
    </div>
  </section>

  <section class="large-map">
    <div class="row full-width">  
      <a href="https://maps.google.com/maps?q=<avt:MyTokens runat="server" Token="[RevTemplate:Standard.AgencyName]" />,<avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" />" class="link external" target="_blank"><img src="http://maps.googleapis.com/maps/api/staticmap?zoom=13&amp;size=640x260&amp;maptype=roadmap&amp;&amp;sensor=false&amp;markers=<avt:MyTokens runat="server" Token="[RevTemplate:Standard.AgencyName]" />,<avt:MyTokens runat="server" Token="[RevTemplate:Standard.StreetAddress]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.City]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.StateAbbr]" />,+<avt:MyTokens runat="server" Token="[RevTemplate:Standard.ZipCode]" />" alt="Static Map image of Calgary Office Address" /></a>
    </div>
  </section>

  <ar:ContentInfo runat="server" />
  
</div>

