using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public class ProvinciaLN
    {
        public static IQueryable ListaProvincias()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Provincias;
            return query;
        }

        public static Provincia obtenerProvincia(int id)
        {
            IEnumerable<Provincia> listas = (IEnumerable<Provincia>)ProvinciaLN.ListaProvincias();
            Provincia prov = listas.Where(x => x.ID == id).FirstOrDefault<Provincia>();
            return prov;
        }
    }
}
