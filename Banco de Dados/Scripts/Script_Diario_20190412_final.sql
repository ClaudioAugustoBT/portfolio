create database db_diario;
use db_diario;

create table tb_professor(
	cd_professor int not null,
    nm_professor varchar(70),
    ic_cienciaProfessor char(1),
    constraint pk_professor
		primary key (cd_professor)
);

create table tb_aluno(
	cd_aluno int not null,
    nm_aluno varchar(70),
    ic_cienciaAluno char(1),
    constraint pk_aluno
		primary key (cd_aluno)
);

create table tb_projeto(
	cd_projeto int not null,
    nm_projeto varchar(70),
    ds_projeto varchar(200),
    constraint pk_projeto
		primary key (cd_projeto)
);

create table tb_referencia(
	cd_referencia int not null,
    ds_referencia varchar(200),
    constraint pk_referencia
		primary key (cd_referencia)
);

create table tb_atividade_prevista(
	cd_atividade_prevista int not null,
    ds_atividade_prevista varchar(200),
    constraint pk_atividade_prevista
		primary key (cd_atividade_prevista)
);

create table tb_dificuldade(
	cd_dificuldade int not null,
    ds_dificuldade varchar(200),
    constraint pk_dificuldade
		primary key (cd_dificuldade)
);

create table tb_orientacao_professor_periodo(
	cd_orientacao_periodo int not null,
    ds_orientacao_periodo varchar(200),
    constraint pk_orientacao_periodo
		primary key (cd_orientacao_periodo)
);

create table tb_orientacao_professor_proximo_periodo(
	cd_orientacao_proximo int not null,
    ds_orientacao_proximo varchar(200),
    constraint pk_orientacao_proximo
		primary key (cd_orientacao_proximo)
);

create table tb_diario_de_bordo(
	cd_diario int not null,
    dt_dataDiario date not null,
    cd_projeto int,
    cd_professor int,
    cd_aluno int,
    cd_referencia int,
    cd_atividade_prevista int,
    cd_dificuldade int,
    cd_orientacao_periodo int,
    cd_orientacao_proximo int,
    constraint pk_diario
		primary key (cd_diario),
	constraint fk_diario_projeto
		foreign key (cd_projeto)
			references tb_projeto(cd_projeto),
	constraint fk_diario_professor
		foreign key (cd_professor)
			references tb_professor(cd_professor),
	constraint fk_diario_aluno
		foreign key (cd_aluno)
			references tb_aluno(cd_aluno), 
	constraint fk_diario_referencia
		foreign key (cd_referencia)
			references tb_referencia(cd_referencia),             
	constraint fk_diario_atividade_prevista
		foreign key (cd_atividade_prevista)
			references tb_atividade_prevista(cd_atividade_prevista),
	constraint fk_diario_dificuldade
		foreign key (cd_dificuldade)
			references tb_dificuldade(cd_dificuldade),
	constraint fk_diario_orientacao_periodo
		foreign key (cd_orientacao_periodo)
			references tb_orientacao_professor_periodo(cd_orientacao_periodo),
	constraint fk_diario_orientacao_proximo
		foreign key (cd_orientacao_proximo)
			references tb_orientacao_professor_proximo_periodo(cd_orientacao_proximo)
);

INSERT INTO tb_professor values 
(1,"Rafael",'c');

INSERT INTO tb_aluno values
(1,"Claudio Augusto",'n'),
(2,"Felipe Dantas",'n'),
(3,"Johnny Santos",'n'),
(4,"Kirk Lucas",'n'),
(5,"Renan",'n'),
(6,"Yago Jesus",'n');

alter table tb_diario_de_bordo drop foreign key fk_diario_professor;
alter table tb_diario_de_bordo drop cd_professor;
alter table tb_diario_de_bordo drop foreign key fk_diario_aluno;
alter table tb_diario_de_bordo drop cd_aluno;

create table professor_diario(
	cd_professor int,
    cd_diario int,
    dt_ciencia date,
    constraint fk_professor_diario_professor
		foreign key (cd_professor)
			references tb_professor(cd_professor),
	constraint fk_professor_diario_diario
		foreign key (cd_diario)
			references tb_diario_de_bordo(cd_diario)
);

create table aluno_diario(
	cd_aluno int,
    cd_diario int,
    dt_ciencia date,
    constraint fk_aluno_diario_aluno
		foreign key (cd_aluno)
			references tb_aluno(cd_aluno),
	constraint fk_aluno_diario_diario
		foreign key (cd_diario)
			references tb_diario_de_bordo(cd_diario)
);

insert into professor_diario values
();

insert into aluno_diario values
();

insert into tb_projeto values
(1, "TIPMART", "Comparador de pre??os de mercados");

insert into tb_referencia values
(1, "http://forum.techtudo.com.br/perguntas/283310/ieias-para-tcc-em-informatica"),
(2, "http://forum.techtudo.com.br/perguntas/283310/ieias-para-tcc-em-informatica"),
(3, "https://starvai.com/acessibilidade-como-automacao-residencial"),
(4, "https:/www.portal.com.org.br/index.php?option=com_content+&view=article&id=24023:lei_12842&catid=66:leis&itemid=34"),
(5, "https://revista pegn.globo.com/banco-de-ideias/aplicativos/noticia/2018/04/startup-conecta-pacientes-medicos-e-reduz-precos-das-consultas.html"),
(6, "https://revista pegn.globo.com/banco-de-ideias/aplicativos/noticia/2018/04/startup-conecta-pacientes-medicos-e-reduz-precos-das-consultas.html"),
(7, "http://www.revistapegn.globo.com/banco-de-ideias/aplicativos"),
(8, "https://revista pegn.globo.com/banco-de-ideias/aplicativos/noticia/2018/04/startup-conecta-pacientes-medicos-e-reduz-precos-das-consultas.html"),
(9, "https://canaltech.com.br/internet/os-5-melhores-sistemas-de-gerenciamento-de-conteudo-gratuitos/"),
(10, "https://canaltech.com.br/internet/os-5-melhores-sistemas-de-gerenciamento-de-conteudo-gratuitos/"),
(11, "https://www.konkero.com.br/financas-pessoais/economizar/3-sites-para-pesquisar-os-menores-precos-em-supermercados"),
(12, "https://www.konkero.com.br/financas-pessoais/economizar/3-sites-para-pesquisar-os-menores-precos-em-supermercados"),
(13, "Sem refer??ncias para o per??odo, uma vez que apenas foram determinados os assuntos que seriam relatados para primeira previa."),
(14, "Sem referencias para o per??odo tendo em vista que apenas foram delegadas as fun????es que cada integrante desenvolveria."),
(15, "https://www.newsday.com/business/king-kullen-timeline-stop-stop-1.25523153"),
(16, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(17, "https:/www.consumidormoderno.com.br/2017/05/12/9-aplicativos-economizar-compras/"),
(18, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(19, "https:/www.sebraemercados.com.br/consumo-em-cores/"),
(20, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(21, "N??o h?? para este dia, pois o grupo apenas realizou a primeira banca."),
(22, "https://www.joshmorony.com"),
(23, "https://www.devmedia.com.br/csharp-orientado-a-objetos-introducao/29539"),
(24, "https://secure.php.net/manual/pt-br/intro-whatis.php"),
(25, "https://devmedia.com.br/introducao-ao-novo-mysql-workbench/25939"),
(26, "N??o houve uma refer??ncia especifica, pois, o grupo apenas debateu sobre as altera????es do logo."),
(27, "https://registro.br"),
(28, "https://docs.microsoft.com/pt-br/dotnet/csharp/tutorials/inheritance"),
(29, "www.w3schools.com/php"),
(30, "https://etecdrc.com.br/a-escola/tcc"),
(31, "Nenhuma, pois apenas delegou fun????es para os integrantes neste dia."),
(32, "https://www.ateomomento.com.br/o-que-e-requisito-funcional"),
(33, "https://docs.microsoft.com/pt-br/dotnet/csharp/programming-guide/concepts/object-oriented-programming"),
(34, "www.w3schools.com/php/php-mysql-intro.asp"),
(35, "https://www.agendor.com.br/blog/como-fidelizar-clientes/"),
(36, "Nenhuma refer??ncia especifica para este dia, uma vez que a equipe se reuniu apenas para discutir o projeto."),
(37, "https://www.ateomomento.com.br/o-que-e-requisito-funcional"),
(38, "https://devmedia.com.br/o-que-e-uml-e-diagramas-de-caso-de-uso-introducao-pratica-a-uml/23408"),
(39, "www.w3schools.com/php/php-mysql-connect.asp"),
(40, "https://whitecom.com.br/ux-design/"),
(41, "https://docs.microsoft.com/pt-br/dotnet/csharp/tutorials/inheritance");

alter table tb_atividade_prevista change ds_atividade_prevista ds_atividade_prevista varchar(500);

insert into tb_atividade_prevista values
(1, "O grupo se reuniu para levantar os poss??veis temas para o projeto de TCC. Os poss??veis temas tamb??m foram apresentados em uma pequena apresenta????o em sala de aula."),
(2, "O grupo realizou uma reuni??o para conversar sobre os temas abordados no dia 11/02/2019 e ficou decidido uma pesquisa realizada por cada integrante a fim de decidir o tema ideal para o projeto."),
(3, "O Claudio apresentou a primeira ideia, automa????o residencial aplicada para pessoas com defici??ncia f??sica, porem o grupo tem que analisar a ideia e fazer levantamento de outros temas para ter como segunda op????o."),
(4, "Pesquisa de mercado para levantamento das ideias de funcionalidade do sistema"),
(5, "Cada integrante do grupo apresentou uma funcionalidade para elabora????o do projeto."),
(6, "Ap??s apresenta????o das funcionalidades, foram escolhidas as principais para dar inicio ao projeto."),
(7, "O grupo apresentou a ideia e proposta do projeto para a professora Daniela para saber se seria vi??vel dar andamento ao assunto."),
(8, "A fim de ter mais uma opini??o o grupo apresentou a ideia para o professor Andr??."),
(9, "Ap??s conversa com professor Andr?? o grupo resolveu mudar o tema para o gerenciador de sites, ent??o pedimos sua opini??o novamente"),
(10, "O grupo mais uma vez foi em busca de novas ideias para realizar e assim foi estabelecido uma nova data para apresenta????o do novo tema."),
(11, "O Claudio apresentou a ideia de um comparador de pre??os de supermercados."),
(12, "O grupo decidiu seguir com o comparador de pre??os."),
(13, "Inicializa????o da documenta????o referente a primeira banca tais como Introdu????o, Metodologia, Desenvolvimento e conclus??o inicial."),
(14, "Delega????o de tarefas para cada integrante do grupo, incluindo: documenta????o, design e parte t??cnica."),
(15, "Apresenta????o da introdu????o."),
(16, "Apresenta????o da metodologia."),
(17, "Foram apresentadas as funcionalidades do software."),
(18, "Elabora????o da conclus??o provis??ria."),
(19, "Elabora????o dos Slides."),
(20, "Normaliza????o da documenta????o para entrega da primeira pr??via."),
(21, "O grupo realizou a apresenta????o da primeira banca."),
(22, "O grupo realizou uma reuni??o para discutir as orienta????es da previa do dia anterior. Tamb??m foram feitas atividades na aula de desenvolvimento mobile."),
(23, "Foi realizada reuni??o para alinhamento sobre o tema e avaliada poss??veis altera????es, foram delegadas pesquisas para os membros do grupo."),
(24, "Come??amos a ter ideias para elabora????o do nosso aplicativo."),
(25, "O grupo desenvolveu atividades no mysql workbench, recurso no qual futuramente ser?? importante para o banco de dados de nosso projeto."),
(26, "Reuni??o para determinar logo do software."),
(27, "Reuni??o para definir o nome do projeto."),
(28, "Elabora????o da atividade de desenvolvimento de sistemas, no qual foi apresentado o conceito de heran??a em c#."),
(29, "Cria????o do esbo??o do aplicativo referente ao nosso projeto."),
(30, "Elabora????o da atividade de Banco de Dados, onde essa atividade era baseada nas informa????es do di??rio de bordo."),
(31, "Reuni??o da equipe a fim de delegar as fun????es para cada integrante a fim de dar continuidade ao trabalho."),
(32, "Desenvolver funcionalidades e requisitos"),
(33, "Foi aplicado o conceito de encapsulamento em c# podendo vir a ser utilizado no tcc."),
(34, "Integra????o das informa????es no esbo??o do aplicativo utilizando a junto do PHP com banco de dados."),
(35, "Esbo??o do trabalho de Banco de dados, onde iniciamos sua constru????o, sera dado continuidade a seu desenvolvimento nas pr??ximas aulas."),
(36, "Reuni??o da equipe para determinar os casos de uso, as funcionalidades e come??o da elabora????o dos diagramas de classe."),
(37, "Verifica????o e adequa????o dos casos de uso, requisitos, funcionalidades e organiza????o."),
(38, "Pesquisa sobre diagrama de caso de uso para inclus??o no TCC."),
(39, "Analise e finaliza????o das primeiras telas do software com php."),
(40, "Finaliza????o do slide para apresenta????o do TCC e planejamento do visual das telas de cadastro do nosso website do projeto."),
(41, "Aplica????o do conceito de heran??a na linguagem de c# podendo ser aplicado no tcc");

insert into tb_dificuldade values
(1, "Decis??o do tema."),
(2, "Pesquisa de tema."),
(3, "Decis??o  do tema do projeto."),
(4, "Legisla????o envolvida."),
(5, "Decis??o das funcionalidades."),
(6, "Analise do tema como um todo."),
(7, "Decis??o final sobre seguir com o tema escolhido."),
(8, "Decis??o do tema para seguir com o trabalho de conclus??o do curso."),
(9, "Decis??o final do tema."),
(10, "Encontrar o tema ideal para iniciar o projeto."),
(11, "Analise de ideias final para o projeto."),
(12, "Neste momento nenhuma."),
(13, "Inicializa????o da documenta????o referente a primeira banca tais como Introdu????o, Metodologia, Desenvolvimento e conclus??o inicial."),
(14, "Delega????o de tarefas para cada integrante do grupo, incluindo: documenta????o, design e parte t??cnica."),
(15, "Dificuldades em saber o que abordar na introdu????o."),
(16, "Dificuldades em saber o que relatar na parte documental da metodologia."),
(17, "Foram apresentadas as funcionalidades do software."),
(18, "Abordagem da conclus??o, uma vez que trata se apenas de uma expectativa sobre como ser?? o projeto."),
(19, "Escolha das cores do layout."),
(20, "Aplica????o das normas ABNT."),
(21, "Pesquisa aprofundada sobre os tipos de comercio. Apresenta????o da ideia como um todo, faltou informa????o."),
(22, "N??o foram encontradas dificuldades."),
(23, "N??o foi encontrado dificuldades."),
(24, "A principal dificuldade ?? ligar o banco de dados ao projeto."),
(25, "N??o houve dificuldades."),
(26, "Relacionar cores do logo."),
(27, "O nome j?? estava registrado no registro.br."),
(28, "N??o foi encontrada dificuldades."),
(29, "Um modo de expor todos os produtos de diferentes estabelecimentos."),
(30, "Algumas incertezas em rela????o a montagem da atividade, porem nada que impedisse a sua finaliza????o."),
(31, "Elabora????o da parte t??cnica."),
(32, "Associar funcionalidades e requisitos aos requisitos funcionais e n??o funcionais"),
(33, "N??o foi encontrado dificuldades at?? o momento."),
(34, "Definir quais informa????es ser??o necess??rias para inser????o."),
(35, "O professor solicitou uma readapta????o no trabalho para que seguisse um padr??o adequado."),
(36, "Elabora????o do diagrama de classe."),
(37, "Encontrar o m??ximo de requisitos funcionais e funcionalidades."),
(38, "Adequar os casos de uso ao tema do TCC."),
(39, "O armazenamento das informa????es inseridas na p??gina."),
(40, "N??o houve dificuldades."),
(41, "N??o foi encontrada dificuldades at?? o momento.");

insert into tb_orientacao_professor_periodo values
(1, "Professora Daniela nos orientou sobre os poss??veis obst??culos que encontrar??amos em cada ideia apresentada por cada integrante do grupo."),
(2, "Sem orienta????es neste dia."),
(3, "Levantar o maior n??mero de ideias, tendo 1 a mais caso necessite mudar o tema no futuro."),
(4, "N??o houve orienta????o para esta atividade"),
(5, "N??o houve orienta????o para esta atividade."),
(6, "N??o houve orienta????o para esta atividade."),
(7, "A professora nos informou as principais dificuldades que seriam encontradas no decorrer do projeto."),
(8, "O professor nos informou sobre a inviabilidade de seguir com o tema, uma vez que ?? bastante burocr??tico trabalhar com m??dicos."),
(9, "O professor Andr?? nos apresentou as dificuldade e falta de tempo para finalizar um tema como esse."),
(10, "Orienta????o do professor Andr??."),
(11, "N??o houve orienta????o de professores nesta etapa."),
(12, "N??o houve orienta????o."),
(13, "N??o houve orienta????o."),
(14, "N??o houve no dia."),
(15, "Incluir conte??do hist??rico."),
(16, "N??o houve este dia."),
(17, "Nenhuma nesta data."),
(18, "N??o houve."),
(19, "Procurar a respeito da psicologia das cores."),
(20, "N??o houve este dia."),
(21, "Professora Daniela nos orientou sobre as diferen??as dos estabelecimentos e a import??ncia em atender os menores estabelecimentos."),
(22, "Foi orientado pelo professor Andr?? a cria????o de novas p??ginas e a utiliza????o de javascript para aplica????es mobile que podem e ser??o uteis para a realiza????o do TCC."),
(23, "Orienta????o do professor Renan na mat??ria de desenvolvimento de sistemas, onde foi demonstrado como realizar a orienta????o a objetos."),
(24, "O professor Anderson orientou em rela????o a utiliza????o do PHP."),
(25, "Orienta????o referente a banco de dados, mat??ria ministrada pelo professor Rafael, onde foi apresentada fun????es no mysql workbench."),
(26, "A professora Francis auxiliou e avaliou o logo como ideal para o que o tema aborda."),
(27, "N??o houve orienta????o espec??fica sobre o TCC, mas o professor indicou sites para pesquisas."),
(28, "Orienta????o de como aplicar este tipo de estrutura, pelo professor Renan."),
(29, "Auxilio dos professores Anderson e Francis quanto a exibi????o das informa????es por meio de PHP."),
(30, "Atividade feita em grupo de TCC, que foi planejada pelo professor Rafael da disciplina de Banco de Dados."),
(31, "Ler o manual do TCC."),
(32, "O prof Andre deu orienta????es sobre aplica????es mobile que ser??o uteis ao desenvolver nossa aplica????o."),
(33, "Foi explicado o conceito e formas de utilizar o conte??do no projeto de tcc."),
(34, "Auxilio dos professores Francis e Anderson quanto a inser????o de informa????es e a liga????o com o banco de dados."),
(35, "Sugest??o de nosso projeto TIPMART oferecer a ideia de fidelizar os clientes ao nosso software/projeto. Essa ideia foi proposta pelo professor Rafael de Banco de dados."),
(36, "O professor nos informou alguns meios e t??cnicas para elabora????o do diagrama de classe."),
(37, "O prof Rafael orientou sobre adicionar funcionalidades que fidelizem clientes."),
(38, "Orienta????o de como adequar ao tema do projeto."),
(39, "Fomos orientados pela professora Francis quanto ao modo de armazenar as informa????es no banco de dados."),
(40, "Durante a aula de banco de dados o professor Rafael permitiu que trabalh??ssemos em nosso projeto."),
(41, "O professor Renan nos passou o conceito b??sico de heran??a no visual studio em c#.");

insert into tb_orientacao_professor_proximo_periodo values
(1, "A professora nos orientou a estudar mais sobre os temas apresentados e assim escolher o tema que mais se enquadraria no perfil dos integrantes."),
(2, "Sem orienta????es neste dia."),
(3, "N??o houve."),
(4, "N??o houve orienta????o para esta atividade."),
(5, "N??o houve orienta????o para esta atividade."),
(6, "N??o houve orienta????o para esta atividade."),
(7, "Analisar a possibilidade de acrescentar agenda m??dica no projeto."),
(8, "Sugest??o para analisar outro tema."),
(9, "Sugest??o de escolha de outro tema."),
(10, "N??o houve."),
(11, "N??o houve orienta????o de professores nesta etapa."),
(12, "N??o houve orienta????o."),
(13, "N??o houve orienta????o."),
(14, "N??o houve no dia."),
(15, "N??o houve."),
(16, "N??o houve este dia."),
(17, "Nenhuma nesta data."),
(18, "N??o houve."),
(19, "N??o houve para este dia."),
(20, "N??o houve este dia."),
(21, "Professora Daniela nos orientou a focar nos mercados menores ao inv??s de optar pelos supermercados e hipermercados."),
(22, "Entrega de uma atividade onde seria desenvolvida uma p??gina de ???Contato???."),
(23, "Realizar pesquisa para dominar a ferramenta."),
(24, "Utiliza????o do PHP para elabora????o do projeto."),
(25, "O grupo deve entregar uma atividade de banco de dados no dia 22/03/2019."),
(26, "Verifica????o da exist??ncia do nome e escolher um dispon??vel e que atenda ao tema."),
(27, "N??o escolher um nome muito complexo."),
(28, "Foi passado uma atividade para fixa????o do conte??do."),
(29, "Efetivar essas informa????es por meio de PHP."),
(30, "Durante a pr??xima aula a atividade deve ser entregue para an??lise e corre????o."),
(31, "Incluir casos de uso e diagramas."),
(32, "Desenvolver pagina de contato e testar design."),
(33, "Foi passado atividade para fixa????o e poss??vel utiliza????o em projetos voltado ao tcc."),
(34, "Popular o banco de dados com as informa????es selecionadas."),
(35, "Deve-se continuar o desenvolvimento do trabalho referente a modelagem e cria????o do di??rio de bordo no mysql workbench."),
(36, "Melhorar e acrescentar itens no diagrama de classe"),
(37, "Encontrar m??todos para gerar fidelidade."),
(38, "Adequar a regra de neg??cios."),
(39, "Utiliza????o das informa????es armazenadas no banco, para login dos usu??rios."),
(40, "N??o houve orienta????es para o pr??ximo per??odo."),
(41, "Foi passado atividade para fixa????o.");

insert into tb_diario_de_bordo values
(1,'2019-02-11',1,1,1,1,1,1);
insert into tb_diario_de_bordo values
(2,'2019-02-12',1,2,2,2,2,2),
(3,'2019-02-13',1,3,3,3,3,3),
(4,'2019-02-22',1,4,4,4,4,4),
(5,'2019-02-23',1,5,5,5,5,5),
(6,'2019-02-24',1,6,6,6,6,6),
(7,'2019-02-25',1,7,7,7,7,7),
(8,'2019-02-26',1,8,8,8,8,8),
(9,'2019-02-27',1,9,9,9,9,9),
(10,'2019-02-28',1,10,10,10,10,10),
(11,'2019-03-01',1,11,11,11,11,11),
(12,'2019-03-02',1,12,12,12,12,12),
(13,'2019-03-03',1,13,13,13,13,13),
(14,'2019-03-04',1,14,14,14,14,14),
(15,'2019-03-05',1,15,15,15,15,15),
(16,'2019-03-06',1,16,16,16,16,16),
(17,'2019-03-07',1,17,17,17,17,17),
(18,'2019-03-08',1,18,18,18,18,18),
(19,'2019-03-09',1,19,19,19,19,19),
(20,'2019-03-10',1,20,20,20,20,20),
(21,'2019-03-11',1,21,21,21,21,21),
(22,'2019-03-12',1,22,22,22,22,22),
(23,'2019-03-13',1,23,23,23,23,23),
(24,'2019-03-14',1,24,24,24,24,24),
(25,'2019-03-15',1,25,25,25,25,25),
(26,'2019-03-18',1,26,26,26,26,26),
(27,'2019-03-19',1,27,27,27,27,27),
(28,'2019-03-20',1,28,28,28,28,28),
(29,'2019-03-21',1,29,29,29,29,29),
(30,'2019-03-22',1,30,30,30,30,30),
(31,'2019-03-25',1,31,31,31,31,31),
(32,'2019-03-26',1,32,32,32,32,32),
(33,'2019-03-27',1,33,33,33,33,33),
(34,'2019-03-28',1,34,34,34,34,34),
(35,'2019-03-29',1,35,35,35,35,35),
(36,'2019-04-01',1,36,36,36,36,36),
(37,'2019-04-02',1,37,37,37,37,37),
(38,'2019-04-03',1,38,38,38,38,38),
(39,'2019-04-04',1,39,39,39,39,39),
(40,'2019-04-05',1,40,40,40,40,40),
(41,'2019-04-10',1,41,41,41,41,41);

show tables;

select * from tb_projeto;
select * from tb_referencia;
select * from tb_atividade_prevista;
select * from tb_dificuldade;
select * from tb_orientacao_professor_periodo;
select * from tb_orientacao_professor_proximo_periodo;
select * from tb_diario_de_bordo;