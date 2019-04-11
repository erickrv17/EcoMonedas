using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class BilleteraLN
    {
        public static IQueryable ListaBilleteras()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.BilleteraVirtuals;
            return query;
        }
        public static IQueryable queryBilleteraV(string correoU)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.BilleteraVirtuals.Where(x => x.ClienteID == correoU);
           
            return query;
        }
        public static IEnumerable<BilleteraVirtual> listaBilleteraVirtual(string correoU)
        {
            IEnumerable<BilleteraVirtual> lista = (IEnumerable<BilleteraVirtual>)BilleteraLN.queryBilleteraV(correoU);
            return lista;
        }
        public static BilleteraVirtual obtenerBilleteraUsuario(string correoU)
        {
            
            IEnumerable<BilleteraVirtual> listas = (IEnumerable<BilleteraVirtual>)BilleteraLN.ListaBilleteras();
            BilleteraVirtual bv = listas.Where(x => x.ClienteID == correoU).FirstOrDefault<BilleteraVirtual>();
            
            return bv;
        }
    }
}
