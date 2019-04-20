using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class CuponLN
    {

        public static IQueryable ListaCupones(int estado)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Cupons.Where(x => x.Estado == true);
            if (estado == 0)
            {
                query = db.Cupons.Where(x => x.Estado == false);
            }
            else
            {
                if (estado == 1)
                {
                    query = db.Cupons.Where(x => x.Estado == true);
                }
                else
                {
                    if (estado == 2)
                    {
                        query = db.Cupons.Where(x => x.Estado == false || x.Estado == true);
                    }
                }
            }

            return query;
        }

        public bool GuardarCupon(
            string nombre,
            string descripcion,
            bool estado,
            string precioCanje,
            string ecoMonedasNecesarias,
            string id = "")
        {

            EcoMonedasContext db = new EcoMonedasContext();
            var miCupon = new Cupon();
            int idCupon = 0;
            bool esNumero = int.TryParse(id, out idCupon);

            if (esNumero || idCupon > 0)
            {
                //Buscar el cupon a actualizar
                miCupon = db.Cupons.Where(c => c.ID == idCupon).First<Cupon>();
            }
            miCupon.Nombre = nombre;
            miCupon.Descripcion = descripcion;
            miCupon.Estado = estado;
            miCupon.PrecioCanje = Convert.ToDouble(precioCanje);
           
            miCupon.EcoMonedasNecesarias = Convert.ToInt32(ecoMonedasNecesarias);
           
          
            if (id.Equals("") || !esNumero)
            {

                db.Cupons.Add(miCupon);
            }
           
            db.SaveChanges();

            return true;
        }

        public static Cupon obtenerCupon(int id)
        {
            IEnumerable<Cupon> listas = (IEnumerable<Cupon>)CuponLN.ListaCupones(2);
            Cupon miCupon = listas.Where(x => x.ID == id).FirstOrDefault<Cupon>();
            return miCupon;
        }
        public static IEnumerable<Cupon> obtenerListaCupones(int estado)
        {
            IEnumerable<Cupon> lista = (IEnumerable<Cupon>)CuponLN.ListaCupones(estado);
            return lista;
        }
        public static IEnumerable<Cupon> obtenerCuponPorID(int id)
        {
            //IEnumerable<Cupon> lista = null;
            EcoMonedasContext db = new EcoMonedasContext();
            IEnumerable<Cupon> lista = db.Cupons.Where(x => x.ID == id);
                    
            return lista;
       }
    }
}
