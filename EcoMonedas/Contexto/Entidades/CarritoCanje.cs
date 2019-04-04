
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto.Entidades
{
    public class CarritoCanje
    {
        public int idMaterial { get; set; }

        public int cantidad { get; set; }

        public double precioMaterial
        {
            get { return mat.PrecioUnitario; }

        }

        public virtual Material mat { get; set; }

        private double calculoSubtotal()
        {
            double subTotal = precioMaterial * cantidad;
            return subTotal;
        }

        public double subTotal
        {
            get
            {
                return calculoSubtotal();
            }
        }
        public CarritoCanje()
        {

        }
        public CarritoCanje(int idMaterial)
        {
            this.idMaterial = idMaterial;
            this.mat = new Material();
            mat = MaterialLN.obtenerMaterialI(idMaterial);
        }
    }
}