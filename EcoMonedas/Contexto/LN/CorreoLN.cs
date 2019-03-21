using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Contexto
{
   public class CorreoLN
    {
        public Usuario usuario { get; set; }

        
        public void enviarCorreoC(byte[] facturaBytes, Byte[] xml)
        {
            var correo = new MailMessage { From = new MailAddress("ecomonedasP2019@gmail.com", "Eco Monedas") };

            correo.To.Add(new MailAddress(usuario.CorreoElectronico, usuario.Nombre));
            correo.Body = "Canje realizado con exito";
            correo.Subject = "Comprobante de canje";
           
            //correo.Attachments.Add(new Attachment(new MemoryStream(facturaBytes), "Reporte.pdf"));
            correo.Attachments.Add(new Attachment(new MemoryStream(facturaBytes), "Reporte.pdf"));

            correo.Attachments.Add(new Attachment(new MemoryStream(xml), "xmlFactura.xml"));
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
            correo.Body = "Tu registro se ha creado con exito te damos la bienvenida a relojeria cet";
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
    }
}
