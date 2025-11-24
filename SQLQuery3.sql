 Select * From Medicos m            
                          INNER JOIN
                         (
                           Select * From MedicoEspecialidade me Join Especialidades e ON me.EspecialidadeId = e.Id 
                            WHERE ( 1=1 )   AND me.EspecialidadeId = 2 
                         ) me ON m.Id = me.MedicoId
                           WHERE ( 1=1 )  
                         ORDER BY m.Nome
                         OFFSET 4 ROWS FETCH NEXT 2 ROWS ONLY