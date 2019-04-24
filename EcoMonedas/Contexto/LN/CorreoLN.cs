using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class CorreoLN
    {
        public Usuario usuario { get; set; }


        public void EnviarCorreoNuevoCliente(Usuario usuario)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(usuario.CorreoElectronico, usuario.Nombre));
            correo.Body = "Bienvenido! " + usuario.Nombre + ", te invitamos a que ayudes al ambiente reciclando tus materiales en nuestros distintos centros de acopio, te esperamos!!!";
            correo.Subject = "Bienvenido a Eco-Monedas";

            using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                      new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");
                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {

                    throw ex;

                }

            }


        }
        public void EnviarCorreoRegistro(Usuario usuario)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(usuario.CorreoElectronico, usuario.Nombre));
            correo.Body = "Bienvenido! "+ usuario.Nombre+", su contraseña de ingreso es: "+usuario.contrasenia;
            correo.Subject = "Registro exitoso";

            using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                      new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");
                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {

                    throw ex;

                }

            }


        }
        public void EnviarContactenos(String correoU, string nombre ,String asunto,String mensaje)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas"));
            correo.Body = "Correo: "+correoU+", "+"Nombre: "+nombre+", Mensaje: "+mensaje;
            correo.Subject = asunto;

            using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                      new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");
                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {

                    throw ex;

                }

            }


        }

        public void EnviarCorreoModificarPerfil(Usuario usuario)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(usuario.CorreoElectronico, usuario.Nombre));
            correo.Body = usuario.Nombre + " se ha modoficado exitosamente su perfil , gracias por usar la pagina de eco monedas";
            correo.Subject = "Modificacion exitosa";

            using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                      new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");
                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {

                    throw ex;

                }

            }


        }
        public void enviarCorreoConCupon(byte[] facturaBytes,Usuario user)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(user.CorreoElectronico, user.Nombre));
            correo.Body = "Querido usuario en este correo se le adjunta un pdf con su cupon correspondiente";
            correo.Subject = "Cupón";

            //correo.Attachments.Add(new Attachment(new MemoryStream(facturaBytes), "Reporte.pdf"));
            correo.Attachments.Add(new Attachment(new MemoryStream(facturaBytes), "Cupon.pdf"));

           using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                    new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");

                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {
                    throw ex;

                }
            }
            
        }
        public void EnviarCorreoCentroUsuario(Usuario usuario,String nombre ,String direccion)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(usuario.CorreoElectronico, usuario.Nombre));
            correo.Body = "Buenas Sr(a) " + usuario.Nombre + ",se le ha asignado el centro de acopio " + nombre+", ubicado en "+direccion;
            correo.Subject = "Asignación de Centro de Acopio";

            using (var smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {

                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.Credentials =
                      new System.Net.NetworkCredential("ecomonedasP2019@gmail.com", "jecc123456");
                try
                {
                    smtpClient.Send(correo);

                }
                catch (Exception ex)
                {

                    throw ex;

                }

            }


        }
    }
}
