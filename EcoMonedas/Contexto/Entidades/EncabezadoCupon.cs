namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EncabezadoCupon")]
    public partial class EncabezadoCupon
    {
        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string ClienteID { get; set; }

        [Column(TypeName = "date")]
        public DateTime Fecha { get; set; }

        public bool Estado { get; set; }

        public int CuponID { get; set; }

        public virtual Cupon Cupon { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
