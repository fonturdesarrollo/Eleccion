<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votar.aspx.cs" Inherits="Eleccion.Votar" %>
<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>

    <!DOCTYPE html>

    <html>
	    <head>
		    <title>Elección Señorita FONTUR 2019</title>
		    <meta charset="utf-8" />
		    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		    <link rel="stylesheet" href="../eleccion_assets/css/main.css" />
		    <noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
	    </head>

    <script type = "text/javascript">

        function Confirmacion() {

            return confirm("¿Deseas votar por esta candidata?, este proceso no se podrá deshacer");
        }
           
    </script>
    <body>
		<MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
            <form id="form1" runat="server">

		    <!-- Wrapper -->
		    <div id="page-wrapper">
			<!-- Header -->
				<section id="header">
					<div class="container">
						<div class="row">
							<div class="col-12">

								<!-- Logo -->
									<h1><a href="index.html" id="logo">Seleccione a su candidata presionando Votar</a></h1>

								<!-- Nav -->
									<nav id="nav">
										<a href="Logout.aspx">Salir</a>
									</nav>

							</div>
						</div>
					</div>
               </section>

				<section id="features">
					<div class="container">
						<div class="row">
							<div class="col-3 col-6-medium col-12-small">

								<!-- Feature #1 -->
									<section>
				                       <asp:GridView ID="gridDetalle" runat="server" 
						                        EmptyDataText="No existen Registros" 
						                        GridLines="Horizontal" 
						                        AutoGenerateColumns="False" OnRowCommand="gridDetalle_RowCommand">
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
							                        <asp:TemplateField>
								                        <ItemTemplate>
                                                            <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Button runat="server" ID="btnVotar" AlternateText="Votar"  OnClientClick="return Confirmacion();" ToolTip="Votar" Text="Votar"  CssClass="button-large" CommandName="VotarDetalle" CommandArgument='<%# Eval("CandidatoID") %>' CausesValidation ="false"/> </pre>
								                        </ItemTemplate>
							                        </asp:TemplateField>
						                        </Columns>
					                        </asp:GridView>
		
									</section>

							</div>
						</div>
					</div>
				</section>
			    </div>
            </form>
        </body>
    </html>

