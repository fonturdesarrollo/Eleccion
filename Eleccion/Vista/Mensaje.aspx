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
			<!-- Header -->
				    <section id="header">
					    <div class="container">
						    <div class="row">
							    <div class="col-12">
								    <!-- Logo -->
									    <h1><a href="index.html" id="logo">¡Gracias por tu participación!</a></h1>

								    <!-- Nav -->
									    <nav id="nav">
										    <a href="Logout.aspx">Salir</a>
									    </nav>
							    </div>
						    </div>
					    </div>
                   </section>

			    </div>
            </form>
        </body>
    </html>
