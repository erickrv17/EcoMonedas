using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class EncabezadoCuponLN
    {
        public static IQueryable queryListaEncabezadosCupon(string correoU)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.EncabezadoCupons.Where(x => x.ClienteID == correoU);
            return query;
        }
        public static IEnumerable<EncabezadoCupon> listaEncabezadosCupon(string correoU)
        {
            IEnumerable<EncabezadoCupon> lista = (IEnumerable<EncabezadoCupon>)
            EncabezadoCuponLN.queryListaEncabezadosCupon(correoU);
            return lista;
        }
        public bool GuardarEncCupon(
           string clienteId,          
           bool estado,
           int cuponid
           )
        {

            EcoMonedasContext db = new EcoMonedasContext();
            var miEncCupon = new EncabezadoCupon();
          
            miEncCupon.ClienteID = clienteId;
            miEncCupon.Fecha = DateTime.Now;
            miEncCupon.Estado = estado;
            miEncCupon.CuponID = Convert.ToInt32(cuponid);
            db.EncabezadoCupons.Add(miEncCupon);
            var miCupon = new Cupon();

            miCupon = db.Cupons.Where(c => c.ID == cuponid).First<Cupon>();

            var miBilletera = new BilleteraVirtual();

            miBilletera = db.BilleteraVirtuals.Where(c => c.ClienteID == clienteId).First<BilleteraVirtual>();
            miBilletera.EcoMondedasCanjeadas = miBilletera.EcoMondedasCanjeadas + Convert.ToInt32(miCupon.EcoMonedasNecesarias);
            miBilletera.EcoMondedasDisponibles = miBilletera.EcoMondedasDisponibles - Convert.ToInt32(miCupon.EcoMonedasNecesarias);

            db.SaveChanges();

            return true;
        }

    }
}
