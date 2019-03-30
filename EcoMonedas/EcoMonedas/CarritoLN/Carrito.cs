using Contexto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcoMonedas.CarritoLN
{
    public class Carrito
    {
        public List<CarritoCanje> Items { get; private set; }

        //Implementación Singleton

        // Las propiedades de solo lectura solo se pueden establecer en la inicialización o en un constructor
        public static readonly Carrito Instancia;

        // Se llama al constructor estático tan pronto como la clase se carga en la memoria
        static Carrito()
        {
            // Si el carrito no está en la sesión, cree uno y guarde los items.
            if (HttpContext.Current.Session["carrito"] == null)
            {
                Instancia = new Carrito();
                Instancia.Items = new List<CarritoCanje>();
                HttpContext.Current.Session["carrito"] = Instancia;
            }
            else
            {
                // De lo contrario, obténgalo de la sesión.
                Instancia = (Carrito)HttpContext.Current.Session["carrito"];
            }
        }

        // Un constructor protegido asegura que un objeto no se puede crear desde el exterior
        protected Carrito() { }

        /**
         * AgregarItem (): agrega un artículo a la compra
         */
        public void AgregarItem(int IdMaterial)
        {
            CarritoCanje nuevoItem = new CarritoCanje(IdMaterial);

            if (Items.Exists(x => x.idMaterial == IdMaterial))
            {
                CarritoCanje item = Items.Find(x => x.idMaterial == IdMaterial);
                item.cantidad++;
                return;
            }

            nuevoItem.cantidad = 1;
            Items.Add(nuevoItem);

        }
        

        public void SetItemcantidad(int idMaterial, int cantidad)
        {
            // Si estamos configurando la cantidad a 0, elimine el artículo por completo
            if (cantidad == 0)
            {
                EliminarItem(idMaterial);
                return;
            }

            // Encuentra el artículo y actualiza la cantidad
            CarritoCanje actualizarItem = new CarritoCanje(idMaterial);
            if (Items.Exists(x => x.idMaterial == idMaterial))
            {
                CarritoCanje item = Items.Find(x => x.idMaterial == idMaterial);
                item.cantidad = cantidad;
                return;
            }

        }

        public void EliminarItem(int idMaterial)
        {
            if (Items.Exists(x => x.idMaterial == idMaterial))
            {
                var itemEliminar = Items.Single(x => x.idMaterial == idMaterial);
                Items.Remove(itemEliminar);
            }

        }

        public double GetTotal()
        {
            double total = 0;
            total = Items.Sum(x => x.subTotal);

            return total;
        }

        public double GetTotalUnidades()
        {
            double totalUnidades = 0;
            totalUnidades = Items.Sum(x => x.cantidad);

            return totalUnidades;
        }
        public void eliminarCarrito()
        {
            Items.Clear();
        }
    }
}