use db_padoca;

create table tb_bolo(
     idBolo bigint auto_increment,
     descricao Varchar(30) not null,
     amanhecido boolean not null,
     valor decimal(10,2) not null,
     
     primary key(idBolo)
);

create table tb_cliente(
	idCliente bigint auto_increment,
    nome varchar(255) not null,
    cpf char(11) not null,
    celular char(12) not null,
    endereco varchar(255) not null,
    numero int not null,
    cep char(8) not null,
    
    primary key(idCliente)
);

create table tb_pao(
     idPao bigint auto_increment,
     descricao Varchar(70) not null,
     disponivel boolean not null,
     valor decimal(10,2) not null,
     
     primary key(idPao)
);

create table tb_bebida(
	idBebida bigint auto_increment,
    descricao Varchar(60) not null,
    disponivel boolean not null,
    valor decimal(10,2) not null,
    
    primary key(idBebida)
);

create table tb_forma_pag(
	idFormaPag int auto_increment,
    descricao varchar(50) not null,
    
    primary key(idFormaPag)
);

create table tb_comanda(
	idComanda bigint auto_increment,
    descricao varchar(255) not null,
    pao_id bigint not null,
    bolo_id bigint not null,
	pagamento_id int not null,
    bebida_id bigint not null,
    cliente_id bigint not null,
    
    primary key(idComanda),
    foreign key(bolo_id) references tb_bolo(idBolo),
    foreign key(pao_id) references tb_pao(idPao),
    foreign key(cliente_id) references tb_cliente(idCliente),
    foreign key(bebida_id) references tb_bebida(idBebida),
    foreign key(pagamento_id) references tb_forma_pag(idFormaPag)
);

	INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Milho",false,7.50);
    INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Paçoca",True,10.50);
    INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Café",True,8.50);
    INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Prestigio",True,15.50);
    INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Cenoura",True,20.50);
    
    select * from tb_bolo;
	insert into tb_cliente(nome,cpf,celular,endereco,numero,cep) values("Bruno","49328553812","019999241464","av joaquina",223,"13051433");
	insert into tb_cliente(nome,cpf,celular,endereco,numero,cep) values("Gustavo",49328553813,"012345689011","av joaquina",224,"13051433");
    insert into tb_cliente(nome,cpf,celular,endereco,numero,cep) values("Alana","49328553814","012345689223","av joaquina",225,"13051433");
    insert into tb_cliente(nome,cpf,celular,endereco,numero,cep) values("Lalinha","49328553815","0123456896","av joaquina",226,"13051433");
    insert into tb_cliente(nome,cpf,celular,endereco,numero,cep) values("Vitão","49328553816","012345689445","av joaquina",227,"13051433");
    
    insert into tb_pao (descricao,disponivel,valor) values ("forma",1,10.99);
	insert into tb_pao (descricao,disponivel,valor) values ("italiano",1,18.99);
	insert into tb_pao (descricao,disponivel,valor) values ("frances",1,14.99);
	insert into tb_pao (descricao,disponivel,valor) values ("fermentado",1,29.99);
	insert into tb_pao (descricao,disponivel,valor) values ("folheado",0,23.99);
    
    insert into tb_bebida(descricao,disponivel,valor) values ("coca",1,3.99);
	insert into tb_bebida(descricao,disponivel,valor) values ("suco misto",1,11.99);
	insert into tb_bebida(descricao,disponivel,valor) values ("cafe",1,4.99);
	insert into tb_bebida(descricao,disponivel,valor) values ("suco",1,5.99);
	insert into tb_bebida(descricao,disponivel,valor) values ("tamarindo",1,9.99);
    
    insert into tb_forma_pag (descricao) values ("cartao");
	insert into tb_forma_pag (descricao) values ("dinheiro");
	insert into tb_forma_pag (descricao) values ("cheque");
	insert into tb_forma_pag (descricao) values ("app");
    
    insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("consuma local",3,3,4,5,6);
	insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("consuma local",2,5,4,5,6);
	insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("consuma local",4,3,4,3,6);
	insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("consuma local",3,2,4,3,6);
	insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("consuma + viagem",1,2,4,5,6);
	insert into tb_comanda (descricao,pao_id,bolo_id,pagamento_id,bebida_id,cliente_id) values ("viagem",2,3,4,4,6);
    
    select * from tb_comanda;