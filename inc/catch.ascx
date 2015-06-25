<%@ Control language="c#" AutoEventWireup="true" Explicit="True" Inherits="DotNetNuke.UI.Skins.SkinObjectBase" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="avt" TagName="MyTokens" Src="~/DesktopModules/avt.MyTokens/SkinObjectReplacer.ascx" %>

<section class="catch">
	<div class="row">
		<div class="catch-content">
				<span class="catch-button">
					<a href="/for-individuals" class="button"><i class="fa fa-check"></i> Get a Quote</a>
				</span>
	            <span class="catch-vs">
	                or call
	            </span>
	            <span class="catch-phone">
	                <i class="fa fa-phone"></i> <avt:MyTokens runat = 'server' Token = '[RevTemplate:Standard.LocalNumber]' />
	            </span>
		</div>
	</div>
</section>