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

        }
    }
}