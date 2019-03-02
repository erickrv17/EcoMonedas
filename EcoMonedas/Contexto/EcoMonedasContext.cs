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

        public virtual DbSet<BilleteraVirtual> BilleteraVirtuals { get; set; }
        public virtual DbSet<CentroAcopio> CentroAcopios { get; set; }
        public virtual DbSet<Cupon> Cupons { get; set; }
        public virtual DbSet<DetalleCanje> DetalleCanjes { get; set; }
        public virtual DbSet<EncabezadoCanje> EncabezadoCanjes { get; set; }
        public virtual DbSet<EncabezadoCupon> EncabezadoCupons { get; set; }
        public virtual DbSet<Material> Materials { get; set; }
        public virtual DbSet<Provincia> Provincias { get; set; }
        public virtual DbSet<Rol> Rols { get; set; }
        public virtual DbSet<Usuario> Usuarios { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BilleteraVirtual>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.BilleteraVirtual)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CentroAcopio>()
                .HasMany(e => e.EncabezadoCanjes)
                .WithRequired(e => e.CentroAcopio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CentroAcopio>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.CentroAcopio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cupon>()
                .Property(e => e.PrecioCanje)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Cupon>()
                .HasMany(e => e.EncabezadoCupons)
                .WithRequired(e => e.Cupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCanje>()
                .HasMany(e => e.DetalleCanjes)
                .WithRequired(e => e.EncabezadoCanje)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCanje>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.EncabezadoCanje)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCupon>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.EncabezadoCupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Provincia>()
                .HasMany(e => e.CentroAcopios)
                .WithRequired(e => e.Provincia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Rol>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.Rol)
                .WillCascadeOnDelete(false);

          
        }
        public void FixEProviderServicesProblem() { var instance = System.Data.Entity.SqlServer.SqlProviderServices.Instance; }

    }
}
