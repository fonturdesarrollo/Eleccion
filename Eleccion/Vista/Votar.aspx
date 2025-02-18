<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Votar.aspx.cs" Inherits="Eleccion.Votar" %>
<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Elección Señorita FONTUR 2025</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <script type="text/javascript">
                function Confirmacion() {
                    return confirm("¿Deseas votar por esta candidata?, este proceso no se podrá deshacer");
                }
            </script>
        </head>
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
									<h1 style="text-align:center">
                                        <a href="#" id="logo">
                                            Marque la casilla de su preferencia y presione el botón VOTAR
									    </a>
									</h1>
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
                                            <HeaderStyle Font-Size="10px" />    
                                            <RowStyle Font-Size="20px"  />
                                            <Columns>
                                                <asp:TemplateField HeaderText="" HeaderStyle-Font-Size="Large">
                                                    <ItemTemplate>
                                                        <div style="display: flex; align-items: center; width:680px; height:450px">
                                                            <div>
                                                                <asp:Image runat="server" ImageUrl='<%# Eval("FotoCandidato") %>' ControlStyle-Height="310" ControlStyle-Width="270" />
                                                                <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Label runat="server" Text='<%# Eval("NombreCandidato") %>'></asp:Label></pre>
                                                                <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Label runat="server" Text='<%# Eval("NombreGerencia") %>'></asp:Label></pre>
                                                                <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Button runat="server" ID="btnVotar" AlternateText="Votar" OnClientClick="return Confirmacion();" ToolTip="Votar" Text="Votar" CssClass="button-large" CommandName="VotarDetalle" CommandArgument='<%# Eval("CandidatoID") %>' CausesValidation="false" /></pre>
                                                            </div>
                                                            <div style="margin-left: 50px;">
                                                                <asp:CheckBox runat="server" ID="reina" Text="Reina" /><br />
                                                                <asp:CheckBox runat="server" ID="simpatia" Text="Simpatia" /><br />
                                                                <asp:CheckBox runat="server" ID="actitud" Text="Actitud" /><br />
                                                                <asp:CheckBox runat="server" ID="sonrisa" Text="Sonrisa" />      <br />                                                          
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
<%--                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <pre style="width:300px;white-space:pre-wrap;text-align:center"><asp:Button runat="server" ID="btnVotar" AlternateText="Votar" OnClientClick="return Confirmacion();" ToolTip="Votar" Text="Votar" CssClass="button-large" CommandName="VotarDetalle" CommandArgument='<%# Eval("CandidatoID") %>' CausesValidation="false" /></pre>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
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