﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Seguridad.Index" %>

<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>


<%-- fgdfgdf --%>

<!DOCTYPE HTML>
  
<html>
	<head>
		<%--  --%>
		<title>Elección</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="loginassets/css/main.css" />


		<script src="js/Util.js" type="text/javascript"></script>
		<script src="js/jquery.js"></script>

		<noscript><link rel="stylesheet" href="loginassets/css/noscript.css" /></noscript>

	</head>
	<body class="is-loading">
	<MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main">
						<header>
							<span class="avatar"><img src="images/avatar.png" alt="" /></span>
							<h1>Bienvenido al Sistema</h1>
                            <h2>Elección Señorita Fontur 2025</h2>
							<p>Indique su cédula</p>
						</header>

						<footer>
							<div class="row uniform">
								<form id ="w" runat ="server">
									<div class="6u 12u$(xsmall)">
                                        <asp:HiddenField runat ="server" ID ="hdnCodigoUsuario"  Value="0"/>
										<asp:TextBox runat="server" ID ="txtClave"   textmode="Password" maxlength="25" placeholder ="Cédula"></asp:TextBox>
										<ASP:RequiredFieldValidator id="chkClave" runat="server" errormessage="* Debe colocar la clave" width="132px" controltovalidate="txtClave" display="Dynamic" ForeColor ="Red"></ASP:RequiredFieldValidator>
									</div>
									<div class="6u 12u$(xsmall)">
										-
									</div>
									<div class="12u$">
										<ul class="actions">
											<li><asp:Button runat="server" ID ="btnAceptar"   class="button big"  Text ="Aceptar" OnClick="btnAceptar_Click" ></asp:Button></li>
										</ul>
									</div>

								</form>
							</div>
						</footer>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; Elección</li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->

			<script>
				if ('addEventListener' in window) {
					window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
				}
			</script>

	</body>
</html>
