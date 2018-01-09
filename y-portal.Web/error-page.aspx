<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error-page.aspx.cs" Inherits="YPortal.error_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CareGiverHQ</title>
    <style type="text/css">
			body {color:#222; font-size:13px;font-family: sans-serif; background:#fff url(/App_Style/images/404bg.png) left top repeat-x;}
			h1 {font-size:300%;font-family:'Trebuchet MS', Verdana, sans-serif; color:#000}
			#page {font-size:122%;width:720px; margin:144px auto 0 auto;text-align:left;line-height:1.2;}
			#message {padding-right:400px;min-height:360px;background:transparent url(/App_Style/images/404.png) right top no-repeat;}
		</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
		<div id="message">
			<h1>404</h1>
			<p>— Sorry an error has occured, we are trying to fix the problem.</p>
			<p>click <a href="<%= Page.ResolveUrl("~/") %>" title="CareGiverHQ">here</a> to go to home & start fresh</p>
		</div>
		</div>
    </form>
</body>
</html>
