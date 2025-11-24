using lab.ebs.Dominio.Entidades.Medico;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace lab.ebs.Infra.ORM_Entity.Mapping
{
    public class MedicoMap : IEntityTypeConfiguration<Medico>
    {
        public void Configure(EntityTypeBuilder<Medico> builder)
        {
            builder.HasKey(x => x.Id);

            builder.Property(x => x.Id)
                .ValueGeneratedOnAdd()
                .IsRequired();

            builder.Property(x => x.CRM)
                .HasMaxLength(20);

            builder.Property(x => x.DataRegistroCRM);

            builder.HasOne(x => x.PessoaMedica)
                .WithMany()
                .HasForeignKey(x => x.PessoaId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasMany(x => x.Especialidades)
                .WithOne(e => e.Medico)
                .HasForeignKey(e => e.MedicoId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }

    public class EspecialidadeMedicaMap : IEntityTypeConfiguration<EspecialidadeMedica>
    {
        public void Configure(EntityTypeBuilder<EspecialidadeMedica> builder)
        {
            builder.HasKey(x => x.Id);

            builder.Property(x => x.RQE)
                .HasMaxLength(20);

            builder.Property(x => x.DataRegistroRQE);

            builder.HasOne(e => e.Medico)
                .WithMany(m => m.Especialidades)
                .HasForeignKey(e => e.MedicoId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasOne(e => e.Especialidade)
                .WithMany(e => e.EspecialidadesMedicas)
                .HasForeignKey(e => e.EspecialidadeId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }

    public class EspecialidadeMap : IEntityTypeConfiguration<Especialidade>
    {
        public void Configure(EntityTypeBuilder<Especialidade> builder)
        {
            builder.HasKey(x => x.Id);

            builder.Property(x => x.Nome)
                .IsRequired()
                .HasMaxLength(100);

            builder.HasMany(e => e.EspecialidadesMedicas)
                .WithOne(em => em.Especialidade)
                .HasForeignKey(em => em.EspecialidadeId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}

