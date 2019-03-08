namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CentroAcopio")]
    public partial class CentroAcopio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CentroAcopio()
        {
            EncabezadoCanjes = new HashSet<EncabezadoCanje>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        [Required]
        public string Imagen { get; set; }

        [Required]
        [StringLength(100)]
        public string UsuarioID { get; set; }

        public int ProvinciaID { get; set; }

        [Required]
        [StringLength(200)]
        public string DireccionExacta { get; set; }

        public bool Estado { get; set; }

        [StringLength(100)]
        public string Correo { get; set; }

        public virtual Provincia Provincia { get; set; }

        public virtual Usuario Usuario { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncabezadoCanje> EncabezadoCanjes { get; set; }
    }
}
