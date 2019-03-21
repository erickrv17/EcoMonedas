using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class MaterialLN
    {
        public static IQueryable ListaMateriales()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Materials;

            return query;
        }

        public bool GuardarMaterial(string nombre, string imagen, string precioUnitario, string color, bool estado, string id = "")
        {
            EcoMonedasContext db = new EcoMonedasContext();
            var miMaterial = new Material();
            int idMaterial = 0;
            bool esNumero = int.TryParse(id, out idMaterial);

            if (esNumero || idMaterial > 0)
            {
                //Buscar el material a actualizar
                miMaterial = db.Materials.Where(c => c.ID == idMaterial).First<Material>();
            }
            miMaterial.Nombre = nombre;
            miMaterial.Imagen =imagen;
            miMaterial.PrecioUnitario = Convert.ToDouble(precioUnitario);
            miMaterial.IdColor = Convert.ToInt32(color);
            miMaterial.Estado = estado;
            if (obtenerMaterialColor(miMaterial.IdColor)!=null)
            {
                return false;
            }else {
                if (id.Equals("") || !esNumero)
                {
                    db.Materials.Add(miMaterial);
                }
                //Siempre se guardan los datos
                db.SaveChanges();//Realiza el commit para el insert en la base de datos

                return true;
            }
        }

        public static Material obtenerMaterial(int id)
        {
            IEnumerable<Material> listas = (IEnumerable<Material>)MaterialLN.ListaMateriales();
            Material materiales = listas.Where(x => x.ID == id).FirstOrDefault<Material>();
            return materiales;
        }

        public static Material obtenerMaterialColor(int idColor)
        {
            IEnumerable<Material> listas = (IEnumerable<Material>)MaterialLN.ListaMateriales();
            Material materiales = listas.Where(x => x.IdColor == idColor).FirstOrDefault<Material>();
            return materiales;
        }
    }
}
