                        select *
                         from(
                               SELECT * FROM Medicos m
                                
                         WHERE ( 1=1 )
                         AND lower(m.Nome) LIKE lower('%braz%') 
                                ORDER BY m.Nome
                               OFFSET 0 ROWS FETCH NEXT 20 ROWS ONLY
                               ) m
                        left join(
                                   select *
                                     from MedicoEspecialidade me
                                     JOIN Especialidades e ON me.EspecialidadeId = e.Id
                                  ) me ON m.Id = me.MedicoId
                        order by m.Nome, me.Nome