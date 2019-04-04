using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Contexto
{
   public class CentroAcopioLN
    {

        public static IQueryable ListaCentrosAcopio(int estado)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.CentroAcopios;
            if (estado == 0)
            {
                query = db.CentroAcopios.Where(x => x.Estado == false);
            }
            else
            {
                if (estado == 1)
                {
                    query = db.CentroAcopios.Where(x => x.Estado == true );
                }
                else
                {
                    if (estado == 2)
                    {
                        query = db.CentroAcopios.Where(x => x.Estado == false || x.Estado == true );
                    }
                    
                }
            }
            return query;
        }

        public bool GuardarCentroAcopio(
            string nombre,
            string usuarioID,
            string provinciaID,
            string imagen,
            string direccionExacta,
            bool estado,
            string correo,
            string id = "")
        {
            UsuarioLN users = new UsuarioLN();
            var miUsuario = UsuarioLN.obtenerUsuario(usuarioID);


            EcoMonedasContext db = new EcoMonedasContext();
            var miCentroAcopio = new CentroAcopio();
            int idCentroAcopio = 0;
            bool esNumero = int.TryParse(id, out idCentroAcopio);

            if (esNumero || idCentroAcopio > 0 )
            {
                //Buscar el centro a actualizar
                miCentroAcopio = db.CentroAcopios.Where(c => c.ID == idCentroAcopio).First<CentroAcopio>();
                if(miCentroAcopio.UsuarioID.Equals(miUsuario.CorreoElectronico))
                {
                    miCentroAcopio.UsuarioID = miUsuario.CorreoElectronico;
                    miUsuario = UsuarioLN.obtenerUsuario(miCentroAcopio.UsuarioID);
                }
                else
                {
                    miUsuario = UsuarioLN.obtenerUsuario(miCentroAcopio.UsuarioID);
                    miUsuario.Disponible = true;
                    users.actaulizaUsuario(miUsuario);
                    miUsuario = UsuarioLN.obtenerUsuario(usuarioID);
                }
            }
            miCentroAcopio.Nombre = nombre;
            miUsuario.Disponible = false;
            users.actaulizaUsuario(miUsuario);
            miCentroAcopio.UsuarioID = usuarioID;
            miCentroAcopio.ProvinciaID = Convert.ToInt32(provinciaID);
            miCentroAcopio.Imagen = imagen;
            miCentroAcopio.DireccionExacta = direccionExacta;
            miCentroAcopio.Estado = estado;
            miCentroAcopio.Correo = correo;

            if (id.Equals("") || !esNumero)
            {
               
                db.CentroAcopios.Add(miCentroAcopio);
            }
            //Siempre se guardan los datos
            db.SaveChanges();//Realiza el commit para el insert en la base de datos

            return true;
        }

        public static CentroAcopio obtenerCentroAcopio(int id)
        {
            IEnumerable<CentroAcopio> listas = (IEnumerable<CentroAcopio>)CentroAcopioLN.ListaCentrosAcopio(2);
            CentroAcopio centroA = listas.Where(x => x.ID == id).FirstOrDefault<CentroAcopio>();
            return centroA;
        }

        public static CentroAcopio obtenerCentroAcopioPorID(string correoUsuario)
        {
            IEnumerable<CentroAcopio> listas = (IEnumerable<CentroAcopio>)CentroAcopioLN.ListaCentrosAcopio(1);
            CentroAcopio centroA = listas.Where(x => x.UsuarioID == correoUsuario).FirstOrDefault<CentroAcopio>();
            return centroA;
        }

    }
}
