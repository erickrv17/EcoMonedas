namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BilleteraVirtual")]
    public partial class BilleteraVirtual
    {
        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string ClienteID { get; set; }

        public int? EncabezadoCanjeID { get; set; }

        public int EcoMondedasCanjeadas { get; set; }

        public int EcoMondedasDisponibles { get; set; }

        public int EcoMondedasGeneradas { get; set; }

        public bool Estado { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
