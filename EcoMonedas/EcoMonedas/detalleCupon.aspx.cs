using Contexto;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcoMonedas
{
    public partial class detalleCupon : System.Web.UI.Page
    {
        int cupID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string cuponID = Request.QueryString["idCupon"];
            cupID = Convert.ToInt32(cuponID);

            if (!IsPostBack)
            {
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportDataSource rdc = new ReportDataSource("dsCupon", CuponLN.obtenerCuponPorID(Convert.ToInt32(cuponID)));
                ReportViewer1.LocalReport.DataSources.Add(rdc);
                ReportViewer1.LocalReport.Refresh();
            }
        }

        protected void btnListaCupones_Click(object sender, EventArgs e)
        {
            Response.Redirect("listaCuponesAdquiridos.aspx");
        }

        protected void btnDescargar_Click(object sender, EventArgs e)
        {
            CorreoLN correoLogica = new CorreoLN();
            correoLogica.enviarCorreoConCupon(ConverirReportePDF(ReportViewer1.LocalReport),(Usuario)Session["Usuario"]);
            lblMensaje.Visible = true;
            lblMensaje.Text = "El Cupon se ha enviado por correo satisfactoriamente!";
        }

        public byte[] ConverirReportePDF(LocalReport localReport)
        {

            string mimeType, encoding, extension;
            Warning[] warnings;
            string[] streams;
            //reportViewer1.ReportPath = "./Reportes/RepComprobanteElectronico.rdlc";
            var bytes = localReport.Render("PDF", @"<DeviceInfo><OutputFormat>PDF</OutputFormat><HumanReadablePDF>False</HumanReadablePDF></DeviceInfo>",
                out mimeType,
                out encoding,
                out extension,
                out streams,
                out warnings);
            return bytes;
        }
    }
}