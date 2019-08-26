<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VotacionCerrada.aspx.cs" Inherits="Eleccion.VotacionCerrada" %>
<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Votación Cerrada</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../panel_assets/css/main.css" />
	</head>
	<body class="is-preload homepage">
       <MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
        <form runat ="server" id ="principal">	
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

					</header>
				</div>

			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<div class="row">
							<div class="col-7 col-12-medium">
								<h2>Votación Cerrada</h2>
							</div>

						</div>
					</div>
				</div>

			<!-- Features -->

			<!-- Main -->


			<!-- Footer -->


			</div>

		<!-- Scripts -->

			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
        </form>
	</body>
</html>