namespace Contexto
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Usuario")]
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            BilleteraVirtuals = new HashSet<BilleteraVirtual>();
            CentroAcopios = new HashSet<CentroAcopio>();
            EncabezadoCanjes = new HashSet<EncabezadoCanje>();
            EncabezadoCupons = new HashSet<EncabezadoCupon>();
        }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(50)]
        public string PrimerApellido { get; set; }

        [Required]
        [StringLength(50)]
        public string SegundoApellido { get; set; }

        [Required]
        [StringLength(50)]
        public string Telefono { get; set; }

        [Key]
        [StringLength(100)]
        public string CorreoElectronico { get; set; }

        [Required]
        [StringLength(50)]
        public string contrasenia { get; set; }

        [Required]
        public string Direccion { get; set; }

        public int RolID { get; set; }

        public bool Disponible { get; set; }

        public bool Estado { get; set; }




        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BilleteraVirtual> BilleteraVirtuals { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CentroAcopio> CentroAcopios { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncabezadoCanje> EncabezadoCanjes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncabezadoCupon> EncabezadoCupons { get; set; }

        public virtual Rol Rol { get; set; }
    }
}
