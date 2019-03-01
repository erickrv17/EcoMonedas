namespace Contexto
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EcoMonedasContext : DbContext
    {
        public EcoMonedasContext()
            : base("name=EcoMonedasContext")
        {
        }

        public virtual DbSet<BilleteraVirtual> BilleteraVirtual { get; set; }
        public virtual DbSet<CentroAcopio> CentroAcopio { get; set; }
        public virtual DbSet<Cupon> Cupon { get; set; }
        public virtual DbSet<DetalleCanje> DetalleCanje { get; set; }
        public virtual DbSet<EncabezadoCanje> EncabezadoCanje { get; set; }
        public virtual DbSet<EncabezadoCupon> EncabezadoCupon { get; set; }
        public virtual DbSet<Material> Material { get; set; }
        public virtual DbSet<Provincia> Provincia { get; set; }
        public virtual DbSet<Rol> Rol { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BilleteraVirtual>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.BilleteraVirtual)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CentroAcopio>()
                .HasMany(e => e.EncabezadoCanje)
                .WithRequired(e => e.CentroAcopio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CentroAcopio>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.CentroAcopio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.PrecioCanje)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Cupon>()
                .HasMany(e => e.EncabezadoCupon)
                .WithRequired(e => e.Cupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCanje>()
                .HasMany(e => e.DetalleCanje)
                .WithRequired(e => e.EncabezadoCanje)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCanje>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.EncabezadoCanje)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCupon>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.EncabezadoCupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Provincia>()
                .HasMany(e => e.CentroAcopio)
                .WithRequired(e => e.Provincia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Rol>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.Rol)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Telefono)
                .HasPrecision(18, 0);
        }
    }
}
