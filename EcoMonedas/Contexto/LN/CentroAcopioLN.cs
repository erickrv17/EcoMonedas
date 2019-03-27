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

            EcoMonedasContext db = new EcoMonedasContext();
            var miCentroAcopio = new CentroAcopio();
            int idCentroAcopio = 0;
            bool esNumero = int.TryParse(id, out idCentroAcopio);

            if (esNumero || idCentroAcopio > 0)
            {
                //Buscar el centro a actualizar
                miCentroAcopio = db.CentroAcopios.Where(c => c.ID == idCentroAcopio).First<CentroAcopio>();
            }
            miCentroAcopio.Nombre = nombre;
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
      
    }
}
