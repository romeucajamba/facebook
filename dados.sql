//////////////////////////////////////Aula-1//////////////////////////////////////////////////
create databse cadastro;
deafault character set utf8
default collate utf8_general_ci;
/*Adicionando o deafault character
 set utf8 e o collate utf8_general_ci o nosso banco
  e as informações estarão em portuigues esses suportam acentuação*/

create table pessoas (
    id int not nuul auto_increment,
    nome varchar(50) not null,
    nascimento date not null,
    genero enum("M", "F") not null,
    peso decimal(5.4),
    altura decimal(3.2),
    nacionalidade varchar(30) default 'Angola',
    primary key(id)
) default charset = utf8;

//////////////////////////////////////Aula-2/////////////////////////////////////////////////////////////////////
/*Depois de fazer essa tabela de cima podes apagar depois de carrergar e depois
 fazer as outras coisas e apagar e carrergar assim sucessivamente,
 isso no MYSQL Workbach*/
insert into pessoas values/*Comando para inserir dados nos campos ou colunas*/
(DEFAULT, 'Romeu', '1999-02-08', 'M', '50.5', '1.50', 'Angola'),
(DEFAULT, 'Renato', '1996-02-08', 'M', '59.5', '1.70', 'Angola'),
(DEFAULT, 'Felipa', '1999-02-08', 'F', '58.5', '1.68', 'Angola'),
(DEFAULT, 'Maria', '2007-02-08', 'M', '50.5', '1.49', 'Angola'),
(DEFAULT, 'Afonso', '2007-02-08', 'M', '56.5', '1.72', 'Angola');
select * from pessoas;

/////////////////////////////////aula-3////////////////////////////////////////////////////////////////////777
desc pessoas;/*descrever a tabela pessoa*/

alter table pessoas;/*Alterar a tabela pessoa*/
add column profissao varchar(10);/*Adicionar  coluna profissao* no ultimo lugar*/
alter table pessoas
add column profissao varchar(10) AFTER nome;/*Adicionar a coluna profissao depois do nome*/
alter table pessoas
add column codigo int FIRST;/*Adicionar a coluna código no primeiro lugar*/
select * from pessoas;/*Selecionar e mostar a tabela pessoas*/
alter table pessoas
drop column profissao; /*eliminar a coluna profissao*/
alter table pessoas
modify column profissao varchar not null default '';/*Modificar ou alterar o tipo primitivo e as constrains*/
alter table pessoas
modify column profissao prof varchar(20) not null default ;/*Mudar o nome da coluna profissao para prof*/
alter table pessoas
rename to gafanhotos; /*Renomar  o nome da tabela pessoas para gafanhotos*/
/////////////////////////////////////////////////////////////////////////////////////////////////
/*Vai criar uma tabela se não existir nenhuma tabela*/
create table if not exists curso (
  nome varchar(30) not null unique,
  descricao text,
  carga int unsigned,/*sem sinal*/
  totaulas int unsigned,
  ano year default '2016'
)default charset = utf8;
alter table cursos
add column idcurso int first;/*Para pôr a tabela em primeiro*/
alter table cursos 
add primary key(idcurso);/*adicionar idcurso como chave primária*/
////////////////////////////////////////////////////////////////////////////////////////