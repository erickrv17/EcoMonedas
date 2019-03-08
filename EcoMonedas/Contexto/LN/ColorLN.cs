using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class ColorLN
    {
        public static IQueryable ListaColor()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Colors;
            return query;
        }

        public static Color obtenerColor(int id)
        {
            IEnumerable<Color> listas = (IEnumerable<Color>)ColorLN.ListaColor();
            Color color = listas.Where(x => x.IdColor == id).FirstOrDefault<Color>();
            return color;
        }
    }
}
