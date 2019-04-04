namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EncabezadoCanje")]
    public partial class EncabezadoCanje
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EncabezadoCanje()
        {
            DetalleCanjes = new HashSet<DetalleCanje>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(100)]
        public string ClienteID { get; set; }

        public int CentroAcopioID { get; set; }

        [Column(TypeName = "date")]
        public DateTime Fecha { get; set; }

        public bool? Estado { get; set; }

        public virtual CentroAcopio CentroAcopio { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalleCanje> DetalleCanjes { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
