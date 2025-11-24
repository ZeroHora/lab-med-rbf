
Aqui está uma relação dos tipos de registros profissionais mais comuns no Brasil, normalmente utilizados em sistemas de cadastro de profissionais:

INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRM','Conselho Regional de Medicina (Médicos)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CREA','Conselho Regional de Engenharia e Agronomia (Engenheiros, Agrônomos, Geólogos, etc.)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('OAB','Ordem dos Advogados do Brasil (Advogados)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRP','Conselho Regional de Psicologia (Psicólogos)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRO','Conselho Regional de Odontologia (Dentistas)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRF','Conselho Regional de Farmácia (Farmacêuticos)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('COREN','Conselho Regional de Enfermagem (Enfermeiros, Técnicos e Auxiliares)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRMV','Conselho Regional de Medicina Veterinária (Veterinários)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRC','Conselho Regional de Contabilidade (Contadores)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CREFITO','Conselho Regional de Fisioterapia e Terapia Ocupacional (Fisioterapeutas, Terapeutas Ocupacionais)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CREF','Conselho Regional de Educação Física (Profissionais de Educação Física)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRAS','Conselho Regional de Assistência Social (Assistentes Sociais)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRBIO','Conselho Regional de Biologia (Biólogos)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRQ','Conselho Regional de Química (Químicos)');
INSERT INTO DWCORP."Profissao" ("Nome", "Descricao") VALUES ('CRBIO','Conselho Regional de Comunicação Social (Jornalistas, Publicitários, etc.)');

SELECT * FROM DWCORP."Profissao" order BY 1;
- **CRM** – Conselho Regional de Medicina (Médicos)
- **CREA** – Conselho Regional de Engenharia e Agronomia (Engenheiros, Agrônomos, Geólogos, etc.)
- **OAB** – Ordem dos Advogados do Brasil (Advogados)
- **CRP** – Conselho Regional de Psicologia (Psicólogos)
- **CRO** – Conselho Regional de Odontologia (Dentistas)
- **CRF** – Conselho Regional de Farmácia (Farmacêuticos)
- **COREN** – Conselho Regional de Enfermagem (Enfermeiros, Técnicos e Auxiliares)
- **CRMV** – Conselho Regional de Medicina Veterinária (Veterinários)
- **CRC** – Conselho Regional de Contabilidade (Contadores)
- **CREFITO** – Conselho Regional de Fisioterapia e Terapia Ocupacional (Fisioterapeutas, Terapeutas Ocupacionais)
- **CREF** – Conselho Regional de Educação Física (Profissionais de Educação Física)
- **CRAS** – Conselho Regional de Assistência Social (Assistentes Sociais)
- **CRBIO** – Conselho Regional de Biologia (Biólogos)
- **CRQ** – Conselho Regional de Química (Químicos)
- **CRCOM** – Conselho Regional de Comunicação Social (Jornalistas, Publicitários, etc.)

Se precisar dessa lista como enum, tabela de apoio ou para validação, posso gerar o código correspondente!

=====
SELECT * FROM DWCORP."EspecializacaoProfissao" order BY 2;
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cardiologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Clínica Médica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Geral');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Dermatologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Endocrinologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Gastroenterologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Geriatria');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Ginecologia e Obstetrícia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Hematologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Infectologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Mastologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina do Trabalho');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Nefrologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Neurologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Oftalmologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Oncologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Ortopedia e Traumatologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Otorrinolaringologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Pediatria');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Pneumologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Urologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Plástica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Vascular');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Anestesiologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina Intensiva');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina de Família e Comunidade');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Patologia');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina Legal');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina Esportiva');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Medicina Preventiva e Social');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Ginecologia Oncológica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Pediátrica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Torácica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Cardiovascular');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia de Cabeça e Pescoço');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia do Aparelho Digestivo');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Oncológica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Bariátrica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Endovascular');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Bucomaxilofacial');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia da Mão');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Coloproctológica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Craniomaxilofacial');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Torácica');
INSERT INTO DWCORP."EspecializacaoProfissao" ("Nome") VALUES( 'Cirurgia Urológica');


•	RQE - Cardiologia
•	RQE - Clínica Médica
•	RQE - Cirurgia Geral
•	RQE - Dermatologia
•	RQE - Endocrinologia
•	RQE - Gastroenterologia
•	RQE - Geriatria
•	RQE - Ginecologia e Obstetrícia
•	RQE - Hematologia
•	RQE - Infectologia
•	RQE - Mastologia
•	RQE - Medicina do Trabalho
•	RQE - Nefrologia
•	RQE - Neurologia
•	RQE - Oftalmologia
•	RQE - Oncologia
•	RQE - Ortopedia e Traumatologia
•	RQE - Otorrinolaringologia
•	RQE - Pediatria
•	RQE - Pneumologia
•	RQE - Psiquiatria
•	RQE - Radiologia
•	RQE - Reumatologia
•	RQE - Urologia
•	RQE - Cirurgia Plástica
•	RQE - Cirurgia Vascular
•	RQE - Anestesiologia
•	RQE - Medicina Intensiva
•	RQE - Medicina de Família e Comunidade
•	RQE - Patologia
•	RQE - Medicina Legal
•	RQE - Medicina Esportiva
•	RQE - Medicina Preventiva e Social
•	RQE - Ginecologia Oncológica
•	RQE - Cirurgia Pediátrica
•	RQE - Cirurgia Torácica
•	RQE - Cirurgia Cardiovascular
•	RQE - Cirurgia de Cabeça e Pescoço
•	RQE - Cirurgia do Aparelho Digestivo
•	RQE - Cirurgia Oncológica
•	RQE - Cirurgia Bariátrica
•	RQE - Cirurgia Endovascular
•	RQE - Cirurgia Bucomaxilofacial
•	RQE - Cirurgia da Mão
•	RQE - Cirurgia Coloproctológica
•	RQE - Cirurgia Craniomaxilofacial
•	RQE - Cirurgia Torácica
•	RQE - Cirurgia Urológica