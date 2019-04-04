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
        public virtual DbSet<Color> Colors { get; set; }
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
            modelBuilder.Entity<CentroAcopio>()
                .HasMany(e => e.EncabezadoCanjes)
                .WithRequired(e => e.CentroAcopio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Color>()
                .HasMany(e => e.Materials)
                .WithRequired(e => e.Color)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cupon>()
                .HasMany(e => e.EncabezadoCupons)
                .WithRequired(e => e.Cupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EncabezadoCanje>()
                .HasMany(e => e.DetalleCanjes)
                .WithRequired(e => e.EncabezadoCanje)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Material>()
                .HasMany(e => e.DetalleCanjes)
                .WithRequired(e => e.Material)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Provincia>()
                .HasMany(e => e.CentroAcopios)
                .WithRequired(e => e.Provincia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Rol>()
                .HasMany(e => e.Usuarios)
                .WithRequired(e => e.Rol)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.BilleteraVirtuals)
                .WithRequired(e => e.Usuario)
                .HasForeignKey(e => e.ClienteID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.CentroAcopios)
                .WithRequired(e => e.Usuario)
                .HasForeignKey(e => e.UsuarioID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.DetalleCanjes)
                .WithRequired(e => e.Usuario)
                .HasForeignKey(e => e.ClienteID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.EncabezadoCupons)
                .WithRequired(e => e.Usuario)
                .HasForeignKey(e => e.ClienteID)
                .WillCascadeOnDelete(false);
        }
        public void FixEProviderServicesProblem() { var instance = System.Data.Entity.SqlServer.SqlProviderServices.Instance; }
    }
}
