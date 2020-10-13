create database projeto_farmacia;

use projeto_farmacia;

create table tb_fornecedor(
id_fornecedor 			int primary key auto_increment,
cnpj_fornecedor			varchar(20) unique not null,
nome_fornecedor 		varchar(50) not null,
endereco_fornecedor 	varchar(100) not null,
numero_fornecedor		varchar(5) not null,
cidade_fornecedor		varchar(100) not null,
cep_fornecedor			varchar(20) not null,
telefone_fornecedor		varchar(20) not null,
estado_fornecedor               varchar(50) not null
);

CREATE TABLE tb_produto(
    id_produto     		int PRIMARY KEY auto_increment,
	id_fornecedor   	int not null,
    nome_produto    	varchar(50) not null,
    tipo_produto		varchar(50) not null,
    dosagem_produto		varchar(50) not null,
    codBarras_produtos  varchar(50) not null,
    dt_fabricacao		varchar(20) not null,
    dt_validade			varchar(20) not null,
    quantidade_produto	int not null,
	valor_produto   	varchar(20) not null,
    
    constraint id_fornecedor_fk 
    foreign key (id_fornecedor) 
    references tb_fornecedor (id_fornecedor)
);

CREATE TABLE tb_funcionario(
id_funcionario 			int primary key auto_increment,
cpf_funcionario 		varchar(20) unique not null,
nome_funcionario 		varchar(50) not null,
nasci_funcionario 		varchar(30) not null,
email_funcionario 		varchar(50) not null,
tel_funcionario 		varchar(20) not null,
tipo_funcionario 		varchar(30) not null,
senha_funcionario		varchar(8) not null,
dica1_funcionario		varchar(30) not null,
dica2_funcionario		varchar(30) not null,
dica3_funcionario		varchar(30) not null
);


create table tb_cliente(
id_cliente 			int primary key auto_increment,
nome_cliente 			varchar(50) not null,
nasc_cliente			varchar(20) not null,
cpf_cliente 			varchar(20) unique not null,
telefone_cliente 		varchar(20) not null,
email_cliente 			varchar(50) not null
);

create table tb_pedido(
id_pedido 			int primary key auto_increment,
dt_pedido 			varchar(20) not null,
cliente_pedido			varchar(50) not null,
funcionario_pedido		varchar(50) not null,
produto_pedido			int not null,
quantidade_pedido		int not null,
total_pedido			varchar(10) not null
);


-- INSERTS 
-- Insert TABELA FORNECEDOR
insert into tb_fornecedor(id_fornecedor, cnpj_fornecedor, nome_fornecedor, endereco_fornecedor, numero_fornecedor, cidade_fornecedor, cep_fornecedor, telefone_fornecedor, estado_fornecedor) Values(1,"05431013000139","Baiana Medicamentos Ltda","R MARTINS DE OLIVEIRA","129","Lauro de Freitas","42700000","00000000","São Paulo(SP)");

-- Insert TABELA PRODUTO
insert into tb_produto(id_produto, id_fornecedor, nome_produto, tipo_produto, dosagem_produto, codBarras_produtos, dt_fabricacao, dt_validade, quantidade_produto, valor_produto) Values(1,1,"Cimegripe","Comprimido","0","1111","12","12","2","10");

-- Insert TABELA FUNCIONÁRIO
insert into tb_funcionario(id_funcionario, cpf_funcionario, nome_funcionario, nasci_funcionario, email_funcionario, tel_funcionario, tipo_funcionario, senha_funcionario, dica1_funcionario, dica2_funcionario, dica3_funcionario) Values(1,"46798526819","Armando Víctor Pereira","1","a@gmail.com","11995052373","admin","0312","1","2","3");

-- Insert TABELA CLIENTE
insert into tb_cliente(id_cliente, nome_cliente, nasc_cliente, cpf_cliente, telefone_cliente, email_cliente) Values(1,"Teste","1","1234567890", "11995052373","a@gmail.com");



drop table tb_pedido;
drop table tb_produto;
drop table tb_fornecedor;
drop table tb_funcionario;
drop table tb_cliente;