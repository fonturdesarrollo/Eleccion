<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mensaje.aspx.cs" Inherits="Eleccion.Mensaje" %>
<%@ Register TagPrefix="MsgBox" Src="~/Vista/UCMessageBox.ascx" TagName="UCMessageBox" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Gracias</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../panel_assets/css/main.css" />
	</head>
    <script type = "text/javascript">

        $(document).ready(function () {
            // make all links with data-confirm prompt the user first.
            $('[data-confirm]').on("click", function (e) {
                e.preventDefault();
                var msg = $(this).data("confirm");
                if (confirm(msg) == true) {
                    var url = this.href;
                    if (url.length > 0) window.location = url;
                    return true;
                }
                return false;
            });

            // on certain links save the scroll postion.
            $('.saveScrollPostion').on("click", function (e) {
                e.preventDefault();
                var currentYOffset = window.pageYOffset;  // save current page postion.
                Cookies.set('jumpToScrollPostion', currentYOffset);
                if (!$(this).attr("data-confirm")) {  // if there is no data-confirm on this link then trigger the click. else we have issues.
                    var url = this.href;
                    window.location = url;
                    //$(this).trigger('click');  // continue with click event.
                }
            });

            // check if we should jump to postion.
            if (Cookies.get('jumpToScrollPostion') !== "undefined") {
                var jumpTo = Cookies.get('jumpToScrollPostion');
                window.scrollTo(0, jumpTo);
                Cookies.remove('jumpToScrollPostion');  // and delete cookie so we don't jump again.
            }
        });
 
           
    </script>
	<body class="is-preload homepage">
       <MsgBox:UCMessageBox ID="messageBox" runat="server" ></MsgBox:UCMessageBox>
        <form runat ="server" id ="principal">	
		<div id="page-wrapper">

			<!-- Features -->
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-4 col-12-medium">

								<!-- Box -->
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>¡Gracias por participar!</h2>
											</header>
                                            <%--<asp:LinkButton runat="server" ID="lnkSalir" Text="Salir" PostBackUrl="#" CssClass="button large icon solid fa-arrow-circle-right"  CausesValidation="false"></asp:LinkButton>--%>
                                            <a href='gotopage.html' class='saveScrollPostion' data-confirm='Are you sure?'>Goto what the heck</a>
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