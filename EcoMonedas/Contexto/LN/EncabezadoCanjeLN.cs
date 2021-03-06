﻿using Contexto.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto.LN
{
    public class EncabezadoCanjeLN
    {
        public static IQueryable queryListaEncabezadosCanje()
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.EncabezadoCanjes;
            return query;
        }
        public static IEnumerable<EncabezadoCanje> listaEncabezadosCanje()
        {
            IEnumerable<EncabezadoCanje> lista = (IEnumerable<EncabezadoCanje>)
            EncabezadoCanjeLN.queryListaEncabezadosCanje();
            return lista;
        }

        //PROBAR
        public static IQueryable queryDetalleCanjeEncabezadoID(int encabezadoID)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.DetalleCanjes.Where(x => x.EncabezadoCanjeID !=0);
            if (encabezadoID!=0)
            {
                query = db.DetalleCanjes.Where(x => x.EncabezadoCanjeID == encabezadoID);
            }

            return query;
        }

        public static IEnumerable<DetalleCanje> listaDetalleCanjes(int encabezadoID)
        {
            IEnumerable<DetalleCanje> lista = (IEnumerable<DetalleCanje>)
            EncabezadoCanjeLN.queryDetalleCanjeEncabezadoID(encabezadoID);
            return lista;
        }



        public static bool registrarEncabezado(List<CarritoCanje> carritoItems, string correoCliente, string correoAdminC)
        {
            EcoMonedasContext db = new EcoMonedasContext();
            if (correoAdminC!=null && carritoItems!=null && correoCliente != "" && UsuarioLN.obtenerUsuarioCliente(correoCliente)!=null)
            {
                try
                {
                    var miEncabezadoC = new EncabezadoCanje();
                    miEncabezadoC.Fecha = DateTime.Now;
                    miEncabezadoC.ClienteID = correoCliente;
                    miEncabezadoC.CentroAcopioID = CentroAcopioLN.obtenerCentroAcopioPorID(correoAdminC).ID;
                    miEncabezadoC.Estado = true;
                    //Calculos que puede mostrar IMPORTANTE
                    //double calculoCMateriales = carritoItems.Sum(x => x.cantidad);
                    //double calculoTotal = carritoItems.Sum(x => x.subTotal);
                
                    db.EncabezadoCanjes.Add(miEncabezadoC);
                    db.SaveChanges();

                    int totalEcoM = 0;
                    for (int i = 0; i < carritoItems.Count; i++)
                    {
                        var miDetalle = new DetalleCanje();
                        miDetalle.EncabezadoCanjeID = miEncabezadoC.ID;
                        miDetalle.MaterialID = carritoItems[i].idMaterial;
                        miDetalle.Cantidad = carritoItems[i].cantidad;
                        miDetalle.Total = Convert.ToInt32(carritoItems[i].subTotal);
                        totalEcoM += Convert.ToInt32(carritoItems[i].subTotal);
                        db.DetalleCanjes.Add(miDetalle);
                        db.SaveChanges();
                    }
                    
                    BilleteraVirtual billeteraN= db.BilleteraVirtuals.Where(p => p.ClienteID == correoCliente).First<BilleteraVirtual>();
                    billeteraN.EcoMondedasGeneradas = billeteraN.EcoMondedasGeneradas + totalEcoM;
                    billeteraN.EcoMondedasDisponibles = billeteraN.EcoMondedasDisponibles + totalEcoM;
                    db.SaveChanges();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                return true;
            }else
            {
                return false;
            }
        }
    }
}
