
#criçao delimitador e inicio da trigger

delimiter $
#corpo da trigger
create trigger trg_delete_paciente before delete on tbl_paciente
#na linha que sofre delete
for each row 
begin # inicio da trigger
insert into tbl_paciente_bkp
set
cod_paciente = old.cod_paciente,
nome_paciente = old.nome_paciente,
telefone_paciente = old.telefone_paciente,
celular_paciente = old.celular_paciente,
email_paciente = old. email_paciente,
nome_responsavel = old.nome_responsavel,
telefone_responsavel = old.telefone_responsavel,
celular_responsavel = old.celular_responsavel,
date_delete = now();
end #fim da trigger
$
