create database centro_sus;

use centro_sus;

create table tbl_especialidade(
cod_especialidade INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_especialidade VARCHAR(100) NOT NULL
);


create table tbl_paciente(
cod_paciente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(100) NOT NULL,
telefone_paciente VARCHAR(10),
celular_paciente VARCHAR(11) NOT NULL,
email_paciente VARCHAR(100) NOT NULL,
nome_responsavel VARCHAR(500) NOT NULL,
telefone_responsavel VARCHAR(11),
celular_responsavel VARCHAR(11) NOT NULL
);


create table tbl_medico(
cod_medico INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nome_medico VARCHAR(100) NOT NULL,
telefone_medico VARCHAR(10),
celular_medico VARCHAR(11) NOT NULL,
email_medico VARCHAR(100) NOT NULL
);

create table tbl_insumos(
cod_insumo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT UNSIGNED NOT NULL,
nome_insumo VARCHAR(100) NOT NULL,
quantidade_insumo DECIMAL(10,2)
);

create table tbl_sala(
cod_sala INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_especialidade INT UNSIGNED NOT NULL,
nro_sala VARCHAR(10) NOT NULL
);

create table agenda(
cod_agenda INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT UNSIGNED NOT NULL,
cod_medico INT UNSIGNED NOT NULL,
cod_sala INT UNSIGNED NOT NULL,
data_cirurgia date,
status_cirurgia ENUM ('AGENDADO','CONCLUIDO','CANCELADO')
);




