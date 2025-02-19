using Seguridad.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eleccion
{
    public partial class Index : System.Web.UI.Page
    {
		protected void Page_Load(object sender, EventArgs e)
		{
            try
            {
				if (!IsPostBack)
				{
					CSeguridad objetoSeguridad = new CSeguridad();
					objetoSeguridad.SeguridadUsuarioDatosID = Convert.ToInt32(this.Session["UserId"].ToString());
					if (objetoSeguridad.EsUsuarioAdministrador())
					{
						lnkPanelDeControl.Visible = true;
					}
					else
					{
						lnkPanelDeControl.Visible = false;
					}
				}
			}
            catch (Exception)
            {
				Response.Redirect("Index.aspx");                
            }
        }
    }
}