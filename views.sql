create view listagem_geral_medico AS
select * from tbl_medico;


select * from listagem_geral_medico
where cod_medico = 1;

#especialidade medico
create view listagem_medico_especialidade_aula as 
select
tm.nome_medico, tm.telefone_medico, tm.celular_medico, tm.email_medico
from tbl_medico as tm
inner join tbl_especialidade as te
on tm.cod_especialidade = te.cod_especialidade;


# Sala e especialidade
create view listagem_sala_especialidade_aula as 
select
ts.nro_sala,
te.nome_especialidade
from tbl_sala as ts
inner join tbl_especialidade as te
on te.cod_especialidade = ts.cod_especialidade;


# Listagem agenda
create view agenda_aula as 
select
a.data_cirurgia, a.status_cirurgia, 
ts.nro_sala,
tm.nome_medico, tm.celular_medico,
tp.nome_paciente, tp.celular_paciente, tp.nome_responsavel, tp.celular_responsavel
from agenda as a
inner join tbl_sala as ts
on a.cod_sala = ts.cod_sala
inner join tbl_medico as tm
on a.cod_medico = tm.cod_medico
inner join tbl_paciente as tp
on a.cod_paciente = tp.cod_paciente;


#testando as views
select * from  listagem_medico_especialidade_aula;
select * from  listagem_sala_especialidade_aula;
select * from agenda_aula;

#excluir views
drop view listagem_medico_especialidade_aula;
drop view listagem_sala_especialidade_aula;
drop view agenda_aula;


