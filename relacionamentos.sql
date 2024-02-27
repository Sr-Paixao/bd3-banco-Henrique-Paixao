#relacionamento entre a tabela sala e especialidade

alter table tbl_sala add constraint fk_sala_especialidade
foreign key (cod_especialidade)
references tbl_especialidade (cod_especialidade);

#relacionamento  tbl_paciente e a tbl_insumos

ALTER TABLE tbl_insumos ADD CONSTRAINT fk_paciente
FOREIGN KEY (cod_paciente)
REFERENCES tbl_paciente(cod_paciente);

#relacionamento tbl medico e tbl especialidade 

ALTER TABLE tbl_medico ADD CONSTRAINT fk_medico_especialidade
FOREIGN KEY (cod_medico)
REFERENCES tbl_especialidade(cod_especialidade);

#tabelas e agenda
ALTER TABLE agenda ADD CONSTRAINT fk_agenda_sala
foreign key (cod_sala)
references tbl_sala(cod_sala);

ALTER TABLE agenda ADD CONSTRAINT fk_agenda_medico
foreign key (cod_medico)
references tbl_medico(cod_medico);

ALTER TABLE agenda ADD CONSTRAINT fk_agenda_paciente
foreign key (cod_paciente)
references tbl_paciente(cod_paciente);