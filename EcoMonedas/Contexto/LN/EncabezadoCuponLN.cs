using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto.LN
{
    class EncabezadoCuponLN
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
    }
}
