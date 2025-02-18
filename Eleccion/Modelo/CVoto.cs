using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eleccion
{
    public class CVoto
    {
        public int candidatoID { get; set; }
        public int usuarioID { get; set; }
        public List<int> tipoEleccionID { get; set; }
    }
}