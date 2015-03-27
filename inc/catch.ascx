<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<section class="catch">
	<div class="row catch-wrap" data-equalizer>
		<div class="catch-button" data-equalizer-watch>
			<div>
				<a href="/for-individuals" class="button"><i class="fa fa-check"></i> Get a Quote</a>
			</div>
		</div>
		<div class="catch-vs" data-equalizer-watch>
		    <div>
		    	or call
		    </div>
		</div>
		<div class="catch-phone" data-equalizer-watch>
		    <div>
		    	<i class="fa fa-phone"></i><avt:MyTokens runat = 'server' Token = '[RevTemplate:Standard.LocalNumber]' />
		    </div>
		</div>
	</div>
</section>