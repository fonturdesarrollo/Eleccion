<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelDeControl.aspx.cs" Inherits="Eleccion.PanelDeControl" %>
<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Panel de Control</title>
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
								<h2>Panel de Control</h2>
							</div>
<%--							<div class="col-5 col-12-medium">
								<ul>
									<li><a href="#" class="button large icon solid fa-arrow-circle-right">Ok let's go</a></li>
									<li><a href="#" class="button alt large icon solid fa-question-circle">More info</a></li>
								</ul>
							</div>--%>
						</div>
					</div>
				</div>

			<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-4 col-12-medium">

								<!-- Box -->
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>Restablecer voto</h2>
											</header>
                                            <asp:Button  runat="server" ID="btnRestablecer" Text="Restablecer"  CssClass="button large icon solid fa-arrow-circle-right"  OnClick="btnRestablecer_Click" />
                                            <br />
                                            <br />
                                            <asp:TextBox runat="server" ID="txtCedula" Placeholder ="Cedula"></asp:TextBox>
                                            <%--<ASP:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" errormessage="Debe colocar la cedula"  controltovalidate="txtCedula" display="Dynamic" ForeColor ="Red"></ASP:RequiredFieldValidator>--%>
										</div>
									</section>
							</div>

							<div class="col-4 col-12-medium">

								<!-- Box -->
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>Resultados</h2>
											</header>
                                            <asp:LinkButton runat="server" ID="lnkResultados" Text="Resultados" PostBackUrl="~/Vista/Resultado.aspx" CssClass="button large icon solid fa-arrow-circle-right"  CausesValidation="false"></asp:LinkButton>
										</div>
									</section>
							</div>

							<div class="col-4 col-12-medium">
								<!-- Box -->
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>Crear/Modificar usuario</h2>
											</header>
											<asp:LinkButton runat="server" ID="lnkCrearUsuario" Text="Usuarios" PostBackUrl="~/Vista/SeguridadUsuario.aspx" CssClass="button large icon solid fa-arrow-circle-right"  CausesValidation="false"></asp:LinkButton>
										</div>
									</section>
							</div>

							<div class="col-4 col-12-medium">

								<!-- Box -->
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>Configurar estatus elección</h2>
                                                <p>Abierta, Cerrada, Ganador</p>
											</header>
                                            <asp:Button  runat="server" ID="Button1" Text="Restablecer"  CssClass="button large icon solid fa-arrow-circle-right"  OnClick="Button1_Click" />
                                            <br />
                                            <br />
                                            <asp:TextBox runat="server" ID="txtEstatus" Placeholder ="Estatus"></asp:TextBox>
										</div>
									</section>

							</div>

						</div>
					</div>
				</div>

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