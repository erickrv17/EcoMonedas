using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class ColorLN
    {
        public static IQueryable ListaColors()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Colors;
            return query;
        }

        public static Color obtenerColor(int id)
        {
            IEnumerable<Color> listaCol = (IEnumerable<Color>)ColorLN.ListaColors();
            Color col = listaCol.Where(x => x.IdColor == id).First<Color>();
            return col;
        }
    }
}
