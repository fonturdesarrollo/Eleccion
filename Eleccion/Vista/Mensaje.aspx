<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mensaje.aspx.cs" Inherits="Eleccion.Mensaje" %>
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

    <body>
		<MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
            <form id="form1" runat="server">

		    <!-- Wrapper -->
		    <div id="page-wrapper">
				<!-- Main -->
					<section id="main">
					    <div id="banner">
						    <div class="container">
							    <div class="row">
								    <div class="col-6 col-12-medium">

									    <!-- Banner Copy -->
										    <p>Gracias por por tu elección.</p>
                                            <a href="Logout.aspx" class="button-large">Salir</a>
								    </div>
								    <div class="col-6 col-12-medium imp-medium">

									    <!-- Banner Image -->
										    <%--<a href="#" class="bordered-feature-image">--%>
                                            <%--<img src="../eleccion_images/avatar.png" alt="" /></a>--%>
								    </div>
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

		
									</section>

							</div>


						</div>
					</div>
				</section>
			    </div>
            </form>
        </body>
    </html>


</html>
