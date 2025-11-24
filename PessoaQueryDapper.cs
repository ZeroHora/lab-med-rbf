using System.Data;
using Dapper;
using lab.ebs.Dominio.Entidades.Endereco;
using lab.ebs.Dominio.Entidades.Pessoas;
using lab.ebs.Dominio.Interfaces;
using lab.ebs.Shared.DTO.Medico;
using lab.ebs.Shared.DTO.PessoasDto;
using lab.ebs.Shared.Requests;
using lab.ebs.Shared.Responses;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace lab.ebs.Infra.Dapper;

public class PessoaQueryDapper : IPessoaQueryDapper
{
    private readonly IDbConnection _dbConnection;

    public PessoaQueryDapper(IDbConnection dbConnection)
    {
        _dbConnection = dbConnection ?? throw new ArgumentNullException(nameof(dbConnection));
    }
    public async Task<PagedResults<PessoaDto?>> ConsultarPessoasPaginadoAsync(PessoaParametrosRequest filtro)
    {
        PagedResults<PessoaDto> pagedResults = new();

        string? nome = filtro.Nome;
        int pagina = filtro.Pagina > 0 ? filtro.Pagina : 1;
        int registrosPorPagina = filtro.RegistrosPorPagina > 0 ? filtro.RegistrosPorPagina : 20;
        var offset = (pagina - 1) * registrosPorPagina;

        DynamicParameters parameters = new();

        parameters.Add("Offset", offset);
        parameters.Add("PageSize", registrosPorPagina);
        parameters.Add("Id", filtro.Id.HasValue ? filtro.Id.Value : (object)DBNull.Value);

        var where = " WHERE (1=1)";

        if (filtro.Id.HasValue)
        {
            where += " AND m.Id = @Id";
            parameters.Add("Id", filtro.Id.Value);
        }

        if (!string.IsNullOrEmpty(filtro.Nome))
        {
            where += " AND lower(m.Nome) LIKE lower('%' + @Nome + '%')";
            parameters.Add("Nome", filtro.Nome);
        }

        var sql = $@"
                SELECT p.*, ec.*, e.*, pa.*, s.*, t.*, em.*, rp.*, pf.*, re.*, ep.*
                FROM DWCORP.""Pessoas"" p
                LEFT JOIN DWCORP.""EstadoCivil"" ec ON p.""EstadoCivilId"" = ec.""Id""
                LEFT JOIN DWCORP.""Estados"" e ON p.""NaturalidadeId"" = e.""SiUf""
                LEFT JOIN DWCORP.""Paises"" pa ON p.""NacionalidadeId"" = pa.""Id""
                LEFT JOIN DWCORP.""Sexos"" s ON p.""SexoId""= s.""Id""
                LEFT JOIN DWCORP.""TelefonePessoas"" t ON p.""Id""  = t.""PessoaId""
                LEFT JOIN DWCORP.""EmailPessoas"" em ON p.""Id""  = em.""PessoaId""
                LEFT JOIN DWCORP.""RegistroProfissional"" rp ON p.""Id""  = rp.""PessoaId""
                LEFT JOIN DWCORP.""Profissao"" pf ON rp.""ProfissaoId"" = pf.""Id""
                LEFT JOIN DWCORP.""RegistroEspecializacao"" re ON rp.""Id"" = re.""RegistroProfissionalId""
                LEFT JOIN DWCORP.""EspecializacaoProfissao"" ep on re.""EspecializacaoProfissaoId""  = ep.""Id""
                {where}
                ORDER BY p.""Nome""
                OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;

                SELECT COUNT(1) FROM DWCORP.""Pessoas"" p
                WHERE {where};";


        using var multi = await _dbConnection.QueryMultipleAsync(sql, parameters);

        var pessoas = (await multi.ReadAsync<Pessoa, EstadoCivil, Estado, Pais, Sexo, TelefonePessoa, EmailPessoa, RegistroProfissional, Profissao, RegistroEspecializacao, EspecializacaoProfissao, Pessoa>(
            (p, ec, est, pais, sexo, tel, email, regProf, prof, regEsp, espProf) =>
            {
                p.EstadoCivil = ec;
                p.Naturalidade = est;
                p.Nacionalidade = pais;
                p.Sexo = sexo;
                p.TelefonesPessoas = tel != null ? new List<TelefonePessoa> { tel } : new List<TelefonePessoa>();
                p.EmailsPessoas = email != null ? new List<EmailPessoa> { email } : new List<EmailPessoa>();
                if (regProf != null)
                {
                    regProf.Profissao = prof;
                    regProf.RegistrosEspecializacoes = regEsp != null ? new List<RegistroEspecializacao> { regEsp } : new List<RegistroEspecializacao>();
                    if (regEsp != null)
                        regEsp.EspecializacaoProfissao = espProf;
                    p.RegistrosProfissionais = new List<RegistroProfissional> { regProf };
                }
                return p;
            },
            splitOn: "Id,Id,Id,Id,Id,Id,Id,Id,Id,Id"
        )).ToList();

        var total = await multi.ReadFirstAsync<int>();
    }
}
