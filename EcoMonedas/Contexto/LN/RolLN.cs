using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class RolLN
    {
        public static IQueryable ListaRol()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Rols;
            return query;
        }

        public static Rol obtenerRol(int id)
        {
            IEnumerable<Rol> listas = (IEnumerable<Rol>)RolLN.ListaRol();
            Rol rol = listas.Where(x => x.ID == id).FirstOrDefault<Rol>();
            return rol;
        }
    }
}
