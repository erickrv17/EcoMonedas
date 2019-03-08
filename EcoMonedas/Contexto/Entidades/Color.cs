namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Color")]
    public partial class Color
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Color()
        {
            Materials = new HashSet<Material>();
        }

        [Key]
        public int IdColor { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        public bool Estado { get; set; }

        [StringLength(50)]
        public string CodigoColor { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Material> Materials { get; set; }
    }
}
