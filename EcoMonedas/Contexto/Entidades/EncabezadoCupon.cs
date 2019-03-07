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
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EncabezadoCupon()
        {
            Usuarios = new HashSet<Usuario>();
        }

        public int ID { get; set; }

        public int ClienteID { get; set; }

        [Column(TypeName = "date")]
        public DateTime Fecha { get; set; }

        public bool Estado { get; set; }

        public int CuponID { get; set; }

        public virtual Cupon Cupon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuarios { get; set; }
    }
}
