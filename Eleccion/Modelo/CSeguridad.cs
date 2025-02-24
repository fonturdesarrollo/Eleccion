﻿using Database.Classes;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace Seguridad.Clases
{
    public class CSeguridad
    {
        private int _seguridadUsuarioDatosID;
        private string _loginUsuario;
        private string _claveUsuario;
        private string _nombreCompleto;
        private string _descripcionUsuario;
        private int _seguridadGrupoID;
        private int _usuarioTecnico;
        private string _estatusUsuario;
        private string _nombreGrupo;
        private string _descripcionGrupo;
        private int _seguridadObjetoID;
        private string _nombreObjeto;
        private int _seguridadObjetoAccesoID;
        private int _empresaSucursalID;

        public CSeguridad()
        {

        }

        public CSeguridad(int _seguridadUsuarioDatosID, string _loginUsuario, string _claveUsuario, string _nombreCompleto, string _descripcionUsuario, int _seguridadGrupoID, int _usuarioTecnico, string _estatusUsuario, string _nombreGrupo, string _descripcionGrupo, int _seguridadObjetoID, string _nombreObjeto, int _seguridadObjetoAccesoID, int _empresaSucursalID)
        {
            this._seguridadUsuarioDatosID = _seguridadUsuarioDatosID;
            this._loginUsuario = _loginUsuario;
            this._claveUsuario = _claveUsuario;
            this._nombreCompleto = _nombreCompleto;
            this._descripcionUsuario = _descripcionUsuario;
            this._seguridadGrupoID = _seguridadGrupoID;
            this._usuarioTecnico = _usuarioTecnico;
            this._estatusUsuario = _estatusUsuario;
            this._nombreGrupo = _nombreGrupo;
            this._descripcionGrupo = _descripcionGrupo;
            this._seguridadObjetoID = _seguridadObjetoID;
            this._nombreObjeto = _nombreObjeto;
            this._seguridadObjetoAccesoID = _seguridadObjetoAccesoID;
            this._empresaSucursalID = _empresaSucursalID;
        }

        public int SeguridadUsuarioDatosID
        {
            get
            {
                return _seguridadUsuarioDatosID;
            }

            set
            {
                _seguridadUsuarioDatosID = value;
            }
        }

        public string LoginUsuario
        {
            get
            {
                return _loginUsuario;
            }

            set
            {
                _loginUsuario = value;
            }
        }

        public string ClaveUsuario
        {
            get
            {
                return _claveUsuario;
            }

            set
            {
                _claveUsuario = value;
            }
        }

        public string NombreCompleto
        {
            get
            {
                return _nombreCompleto;
            }

            set
            {
                _nombreCompleto = value;
            }
        }

        public string DescripcionUsuario
        {
            get
            {
                return _descripcionUsuario;
            }

            set
            {
                _descripcionUsuario = value;
            }
        }

        public int SeguridadGrupoID
        {
            get
            {
                return _seguridadGrupoID;
            }

            set
            {
                _seguridadGrupoID = value;
            }
        }

        public int UsuarioTecnico
        {
            get
            {
                return _usuarioTecnico;
            }

            set
            {
                _usuarioTecnico = value;
            }
        }

        public string EstatusUsuario
        {
            get
            {
                return _estatusUsuario;
            }

            set
            {
                _estatusUsuario = value;
            }
        }

        public string NombreGrupo
        {
            get
            {
                return _nombreGrupo;
            }

            set
            {
                _nombreGrupo = value;
            }
        }

        public string DescripcionGrupo
        {
            get
            {
                return _descripcionGrupo;
            }

            set
            {
                _descripcionGrupo = value;
            }
        }

        public int SeguridadObjetoID
        {
            get
            {
                return _seguridadObjetoID;
            }

            set
            {
                _seguridadObjetoID = value;
            }
        }
        
        public string NombreObjeto
        {
            get
            {
                return _nombreObjeto;
            }

            set
            {
                _nombreObjeto = value;
            }
        }
        public int SeguridadObjetoAccesoID
        {
            get
            {
                return _seguridadObjetoAccesoID;
            }

            set
            {
                _seguridadObjetoAccesoID = value;
            }
        }
        public int EmpresaSucursalID
        {
            get
            {
                return _empresaSucursalID;
            }

            set
            {
                _empresaSucursalID = value;
            }
        }
		public bool EsAccesoPermitido(int seguridadObjetoID)
		{
			bool esPermitido = false;
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("[usp_Seguridad_ObtenerAccesoObjeto]", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@SeguridadUsuarioDatosID", SqlDbType.Int) { Value = this.SeguridadUsuarioDatosID });
						cmd.Parameters.Add(new SqlParameter("@SeguridadObjetoID", SqlDbType.Int) { Value = seguridadObjetoID });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							DataSet ds = new DataSet();
							da.Fill(ds);

							if (ds.Tables[0].Rows.Count > 0)
							{
								esPermitido = true;
							}
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return esPermitido;
		}

		public bool EsUsuarioAdministrador()
		{
			bool esPermitido = false;
			string connectionString = ConfigurationManager.AppSettings.Get("connectionString");

			try
			{
				using (SqlConnection conn = new SqlConnection(connectionString))
				{
					conn.Open();

					using (SqlCommand cmd = new SqlCommand("[usp_Seguridad_ObtenerAdministrador]", conn))
					{
						cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.Add(new SqlParameter("@SeguridadUsuarioDatosID", SqlDbType.Int) { Value = this.SeguridadUsuarioDatosID });

						using (SqlDataAdapter da = new SqlDataAdapter(cmd))
						{
							DataSet ds = new DataSet();
							da.Fill(ds);

							if (ds.Tables[0].Rows.Count > 0)
							{
								esPermitido = true;
							}
						}
					}
				}
			}
			catch (Exception)
			{
				throw;
			}

			return esPermitido;
		}
	}
}