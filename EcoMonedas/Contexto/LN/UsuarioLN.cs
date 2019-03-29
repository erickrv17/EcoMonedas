﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
  public class UsuarioLN
    {
        public static IQueryable ListaUsuarios(int estado)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Usuarios.Where(x => x.Estado == true);
            if (estado == 0)
            {
                query = db.Usuarios.Where(x => x.Estado == false && x.RolID!=3);
            }
            else
            {
                if (estado == 1)
                {
                    query = db.Usuarios.Where(x => x.Estado == true && x.RolID != 3);
                }
                else
                {
                    if (estado == 2)
                    {
                        query = db.Usuarios.Where(x => x.Estado == false || x.Estado == true && x.RolID != 3);
                    }else
                    {
                        if (estado == 3)
                        {
                            query = db.Usuarios.Where(x => x.Estado == false || x.Estado == true && x.RolID == 3);
                        }
                    }
                }
            }

            return query;
        }
        public static IQueryable ListaUsuariosDisponibles(String correoU)
        {
            var db = new EcoMonedasContext();
            IQueryable query = db.Usuarios.Where(x => x.Estado == true && x.Disponible == true && x.RolID == 2);
            if(correoU==null)
            {
                query = db.Usuarios.Where(x => x.Estado == true && x.Disponible == true && x.RolID == 2);
            }
            else
            {
                query = db.Usuarios.Where(x => x.Disponible == false && x.CorreoElectronico == correoU && x.RolID == 2 && x.Estado == true || x.Disponible==true && x.RolID==2 && x.Estado==true);
            }
            return query;
        }

        public bool GuardarUsuario(
            string nombre,
            string primerApellido,
            string segundoApellido,
            string telefono,
            string correoElectronico,
            string contrasenia,
            string direccion,
            string rolID,
            bool estado,
            bool disponible
           )
        {

            EcoMonedasContext db = new EcoMonedasContext();

            var miUsuario = obtenerUsuario(correoElectronico);

            //int idUsuario = 0;
            //bool esNumero = int.TryParse(correoElectronico, out idUsuario);

            if (miUsuario==null)
            {                
                miUsuario = new Usuario();
                miUsuario.Nombre = nombre;
                miUsuario.PrimerApellido = primerApellido;
                miUsuario.SegundoApellido = segundoApellido;
                miUsuario.Telefono = telefono;
                miUsuario.CorreoElectronico = correoElectronico;
                miUsuario.contrasenia = GenerarPassword();
                miUsuario.Direccion = direccion;
                miUsuario.RolID = Convert.ToInt32(rolID);
                miUsuario.Estado = estado;
                miUsuario.Disponible = disponible;
                if (!correoElectronico.Equals(""))
                {

                    db.Usuarios.Add(miUsuario);
                }
            }
            else
            {
             miUsuario = db.Usuarios.Where(p => p.CorreoElectronico == correoElectronico).First<Usuario>();
             miUsuario.Nombre = nombre;
            miUsuario.PrimerApellido = primerApellido;
            miUsuario.SegundoApellido = segundoApellido;
            miUsuario.Telefono = telefono;
            miUsuario.contrasenia = contrasenia;
            miUsuario.Direccion = direccion;
            miUsuario.RolID = Convert.ToInt32(rolID);
            miUsuario.Estado = estado;
            miUsuario.Disponible = disponible;

            }

            //Siempre se guardan los datos
            db.SaveChanges();//Realiza el commit para el insert en la base de datos

            return true;
        }
        public void actaulizaUsuario(Usuario user)  {

            EcoMonedasContext db = new EcoMonedasContext();

            var miUsuario = user;
            
             miUsuario = db.Usuarios.Where(p => p.CorreoElectronico == user.CorreoElectronico).First<Usuario>();
            miUsuario.Disponible = user.Disponible;
            db.SaveChanges();

        }


        public static Usuario obtenerUsuario(string correo)
        {
            IEnumerable<Usuario> listas = (IEnumerable<Usuario>)UsuarioLN.ListaUsuarios(2);
            Usuario usuario = listas.Where(x => x.CorreoElectronico == correo).FirstOrDefault<Usuario>();
            return usuario;
        }
        public static string GenerarPassword()
        {
            string contraseña = string.Empty;
            string[] letras = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
                                "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
            Random EleccionAleatoria = new Random();

            for (int i = 0; i < 10; i++)
            {
                int LetraAleatoria = EleccionAleatoria.Next(0, 100);
                int NumeroAleatorio = EleccionAleatoria.Next(0, 9);

                if (LetraAleatoria < letras.Length)
                {
                    contraseña += letras[LetraAleatoria];
                }
                else
                {
                    contraseña += NumeroAleatorio.ToString();
                }
            }
            return contraseña;
        }
    }
}
