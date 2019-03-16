﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
    public class CuponLN
    {

        public static IQueryable ListaCupones()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Cupons;

            return query;
        }

        public bool GuardarCupon(
            string nombre,
            string descripcion,
            bool estado,
            string precioCanje,
            string ecoMonedasNecesarias,
            string id = "")
        {

            EcoMonedasContext db = new EcoMonedasContext();
            var miCupon = new Cupon();
            int idCupon = 0;
            bool esNumero = int.TryParse(id, out idCupon);

            if (esNumero || idCupon > 0)
            {
                //Buscar el cupon a actualizar
                miCupon = db.Cupons.Where(c => c.ID == idCupon).First<Cupon>();
            }
            miCupon.Nombre = nombre;
            miCupon.Descripcion = descripcion;
            miCupon.Estado = estado;
            miCupon.PrecioCanje = Convert.ToDouble(precioCanje);
           
            miCupon.EcoMonedasNecesarias = Convert.ToInt32(ecoMonedasNecesarias);
           
          
            if (id.Equals("") || !esNumero)
            {

                db.Cupons.Add(miCupon);
            }
           
            db.SaveChanges();

            return true;
        }

        public static Cupon obtenerCupon(int id)
        {
            IEnumerable<Cupon> listas = (IEnumerable<Cupon>)CuponLN.ListaCupones();
            Cupon miCupon = listas.Where(x => x.ID == id).FirstOrDefault<Cupon>();
            return miCupon;
        }

    }
}