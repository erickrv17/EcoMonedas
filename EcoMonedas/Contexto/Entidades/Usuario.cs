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
        [Key]
        [Column(Order = 0)]
        public int ID { get; set; }

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
        [Column(Order = 1)]
        [StringLength(100)]
        public string CorreoElectronico { get; set; }

        [Required]
        [StringLength(50)]
        public string password { get; set; }

        [Required]
        [StringLength(100)]
        public string Direccion { get; set; }

        public int RolID { get; set; }

        public bool Estado { get; set; }

        public virtual BilleteraVirtual BilleteraVirtual { get; set; }

        public virtual CentroAcopio CentroAcopio { get; set; }

        public virtual EncabezadoCanje EncabezadoCanje { get; set; }

        public virtual EncabezadoCupon EncabezadoCupon { get; set; }

        public virtual Rol Rol { get; set; }
    }
}
