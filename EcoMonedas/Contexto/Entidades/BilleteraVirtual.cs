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
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BilleteraVirtual()
        {
            Usuarios = new HashSet<Usuario>();
        }

        public int ID { get; set; }

        public int ClienteID { get; set; }

        public int? EncabezadoCanjeID { get; set; }

        public int? EcoMondedasCanjeadas { get; set; }

        public int? EcoMondedasDisponibles { get; set; }

        public int? EcoMondedasGeneradas { get; set; }

        public bool Estado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuarios { get; set; }
    }
}
