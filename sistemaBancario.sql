/*create database sistema_bancario;
use sistema_bancario;

create table banco (
    codigo int primary key,
    nome varchar(30)
);

create table agencia (
    numero_agencia int primary key,
    endereco varchar(50),
    cod_banco int,
    foreign key (cod_banco) references banco(codigo)
);

create table cliente (
    cpf char(14) primary key,
    nome varchar(30),
    endereco varchar(50),
    sexo char(1),
    check (sexo in ('m', 'f'))
);

create table conta (
    numero_conta char(8) primary key, -- Alterado para char(8)
    saldo decimal(8, 2),
    tipo_conta int,
    num_agencia int,
    foreign key (num_agencia) references agencia(numero_agencia)
);

create table historico (
    cpf_cliente char(14),
    num_conta char(8),
    data_inicio date,
    primary key (cpf_cliente, num_conta), -- Alterado para chave primária composta
    foreign key (cpf_cliente) references cliente(cpf),
    foreign key (num_conta) references conta(numero_conta)
);

create table telefone_cliente (
    cpf_cli char(14),
    telefone char(11) primary key,
    foreign key (cpf_cli) references cliente(cpf)
);

insert into banco (codigo, nome) values
    (1, 'Banco do Brasil'),
    (4, 'CEF');

insert into agencia (numero_agencia, endereco, cod_banco) values
    (322, 'Av.Machado de Assis', 4),
    (1253, 'R. Paradigma, 17', 1);

insert into cliente (cpf, nome, sexo, endereco) values
    ('111.222.333-44', 'Amadeo', 'm', 'Rua GranPrix , 1050'),
    ('666.777.888-99', 'Marcos', 'm', 'Av. Expresso, 1008'),
    ('555.444.777-33', 'Scott', 'm', 'Rua Paradigma, 640');

insert into conta (numero_conta, saldo, tipo_conta, num_agencia) values
    ('11765-2', 22745.05, 2, 322),
    ('21010-7', 3100.96, 1, 1253);

insert into historico (cpf_cliente, num_conta, data_inicio) values
    ('111.222.333-44', '11765-2', '2015-12-22'), -- Corrigido o formato da data
    ('666.777.888-99', '11765-2', '2016-10-05'), -- Corrigido o formato da data
    ('555.444.777-33', '21010-7', '2012-08-29'); -- Corrigido o formato da data

insert into telefone_cliente (cpf_cli, telefone) values
    ('111.222.333-44', '(83) 3222-1234'),
    ('666.777.888-99', '(83) 99443-9999'),
    ('555.444.777-33', '(83) 3233-2267');
    
alter table cliente add column pais char(3) default 'BRA';

select * from cliente;

alter table cliente add column EMAIL Varchar(50);

delete from historico
where num_conta = '11765-2';

select * from conta;

update agencia
set numero_agencia = 6342
where numero_agencia = 322;
*/
ALTER TABLE conta
MODIFY COLUMN numero_conta char(7);
