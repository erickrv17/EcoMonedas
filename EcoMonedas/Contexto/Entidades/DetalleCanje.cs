namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DetalleCanje")]
    public partial class DetalleCanje
    {
        public int ID { get; set; }

        public int EncabezadoCanjeID { get; set; }

        public int? MaterialID { get; set; }

        public int? Cantidad { get; set; }

        public int? Total { get; set; }

        public virtual EncabezadoCanje EncabezadoCanje { get; set; }

        public virtual Material Material { get; set; }
    }
}
