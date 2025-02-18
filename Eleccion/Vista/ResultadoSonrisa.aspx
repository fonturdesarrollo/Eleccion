<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultadoSonrisa.aspx.cs" Inherits="Eleccion.ResultadoSonrisa" %>
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
								<h2>Resultados</h2>
							</div>
							<div class="col-5 col-12-medium">
								<ul>
                                    <li><asp:LinkButton runat="server" ID="lnkResultados" Text="Panel de control" PostBackUrl="~/Vista/PanelDeControl.aspx" CssClass="button large icon solid fa-arrow-circle-left"  CausesValidation="false"></asp:LinkButton></li>
								</ul>
							</div>
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
												<asp:HyperLink runat="server" NavigateUrl="~/Vista/Resultado.aspx" Text="Reina |"></asp:HyperLink>
												<asp:HyperLink runat="server" NavigateUrl="~/Vista/ResultadoSimpatia.aspx" Text="Simpatía |"></asp:HyperLink>
												<asp:HyperLink runat="server" NavigateUrl="~/Vista/ResultadoSonrisa.aspx" Text="Actitud |"></asp:HyperLink>
												<br />
												<br />
											<header style="text-align:center">
												<h2>Candidatas Sonrisa</h2>
											</header>
				                               <asp:GridView ID="gridDetalle" runat="server" 
						                                EmptyDataText="No existen Registros" 
						                                GridLines="Horizontal" 
						                                AutoGenerateColumns="False" >
						                                <HeaderStyle  Font-Size="10px" />
							                            <RowStyle  Font-Size="20px" />
						                                <Columns>
							                                <asp:TemplateField HeaderText="" HeaderStyle-Font-Size="Large" >
								                                <ItemTemplate>
                                                                    <asp:Image runat="server"  ImageUrl='<%# Eval("FotoCandidato") %>' ControlStyle-Height="300" ControlStyle-Width="300"  />
                                                                    <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Label runat ="server" Text='<%# Eval("NombreCandidato") %>' ></asp:Label></pre>
                                                                    <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Label runat ="server" Text='<%# Eval("NombreGerencia") %>' ></asp:Label></pre>
								                                </ItemTemplate>
							                                </asp:TemplateField>
							                                <asp:TemplateField HeaderText ="Total" HeaderStyle-Font-Size="Larger">
								                                <ItemTemplate>
                                                                    <asp:Label runat="server" ID="lblTotal" Text ='<%# Eval("TotalVotos") %>'></asp:Label>
								                                </ItemTemplate>
							                                </asp:TemplateField>
						                                </Columns>
					                                </asp:GridView>
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
