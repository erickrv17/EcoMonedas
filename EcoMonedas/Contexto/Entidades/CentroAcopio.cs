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
            EncabezadoCanje = new HashSet<EncabezadoCanje>();
            Usuario = new HashSet<Usuario>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        public int UsuarioID { get; set; }

        public int ProvinciaID { get; set; }

        [Required]
        [StringLength(200)]
        public string DireccionExacta { get; set; }

        public bool Estado { get; set; }

        [StringLength(100)]
        public string Correo { get; set; }

        public virtual Provincia Provincia { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncabezadoCanje> EncabezadoCanje { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}
