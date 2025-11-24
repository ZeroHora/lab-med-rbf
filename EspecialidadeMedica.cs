using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab.ebs.Dominio.Entidades.Medico
{
    public class EspecialidadeMedica
    {
        public int Id  { get; set; }
        public int MedicoId { get; set; }
        public virtual Medico? Medico { get; set; }
        public string? RQE { get; set; }  //registro de qualificação de especialista
        public DateTime? DataRegistroRQE { get; set; }
        public Especialidade> Especialidade { get; set; } = [];
    }
}
