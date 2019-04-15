using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class EncabezadoCuponLN
    {
        public static IQueryable queryListaEncabezadosCupon()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.EncabezadoCupons;
            return query;
        }
        public static IEnumerable<EncabezadoCupon> listaEncabezadosCupon()
        {
            IEnumerable<EncabezadoCupon> lista = (IEnumerable<EncabezadoCupon>)
            EncabezadoCuponLN.queryListaEncabezadosCupon();
            return lista;
        }
        public static bool GuardarEncCupon(
           string clienteId,          
           bool estado,
           int cuponID
           )
        {

            EcoMonedasContext db = new EcoMonedasContext();
            var miEncCupon = new EncabezadoCupon();
           
            miEncCupon.ClienteID = clienteId;
            miEncCupon.Fecha = DateTime.Now;
            miEncCupon.Estado = estado;
            miEncCupon.CuponID = cuponID;
            db.EncabezadoCupons.Add(miEncCupon);
            
            db.SaveChanges();

            return true;
        }

    }
}
