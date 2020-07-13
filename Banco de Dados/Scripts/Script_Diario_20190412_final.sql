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
(1, "TIPMART", "Comparador de preços de mercados");

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
(13, "Sem referências para o período, uma vez que apenas foram determinados os assuntos que seriam relatados para primeira previa."),
(14, "Sem referencias para o período tendo em vista que apenas foram delegadas as funções que cada integrante desenvolveria."),
(15, "https://www.newsday.com/business/king-kullen-timeline-stop-stop-1.25523153"),
(16, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(17, "https:/www.consumidormoderno.com.br/2017/05/12/9-aplicativos-economizar-compras/"),
(18, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(19, "https:/www.sebraemercados.com.br/consumo-em-cores/"),
(20, "Manual do TCC da ETEC Dra. Ruth Cardoso, ano 2019."),
(21, "Não há para este dia, pois o grupo apenas realizou a primeira banca."),
(22, "https://www.joshmorony.com"),
(23, "https://www.devmedia.com.br/csharp-orientado-a-objetos-introducao/29539"),
(24, "https://secure.php.net/manual/pt-br/intro-whatis.php"),
(25, "https://devmedia.com.br/introducao-ao-novo-mysql-workbench/25939"),
(26, "Não houve uma referência especifica, pois, o grupo apenas debateu sobre as alterações do logo."),
(27, "https://registro.br"),
(28, "https://docs.microsoft.com/pt-br/dotnet/csharp/tutorials/inheritance"),
(29, "www.w3schools.com/php"),
(30, "https://etecdrc.com.br/a-escola/tcc"),
(31, "Nenhuma, pois apenas delegou funções para os integrantes neste dia."),
(32, "https://www.ateomomento.com.br/o-que-e-requisito-funcional"),
(33, "https://docs.microsoft.com/pt-br/dotnet/csharp/programming-guide/concepts/object-oriented-programming"),
(34, "www.w3schools.com/php/php-mysql-intro.asp"),
(35, "https://www.agendor.com.br/blog/como-fidelizar-clientes/"),
(36, "Nenhuma referência especifica para este dia, uma vez que a equipe se reuniu apenas para discutir o projeto."),
(37, "https://www.ateomomento.com.br/o-que-e-requisito-funcional"),
(38, "https://devmedia.com.br/o-que-e-uml-e-diagramas-de-caso-de-uso-introducao-pratica-a-uml/23408"),
(39, "www.w3schools.com/php/php-mysql-connect.asp"),
(40, "https://whitecom.com.br/ux-design/"),
(41, "https://docs.microsoft.com/pt-br/dotnet/csharp/tutorials/inheritance");

alter table tb_atividade_prevista change ds_atividade_prevista ds_atividade_prevista varchar(500);

insert into tb_atividade_prevista values
(1, "O grupo se reuniu para levantar os possíveis temas para o projeto de TCC. Os possíveis temas também foram apresentados em uma pequena apresentação em sala de aula."),
(2, "O grupo realizou uma reunião para conversar sobre os temas abordados no dia 11/02/2019 e ficou decidido uma pesquisa realizada por cada integrante a fim de decidir o tema ideal para o projeto."),
(3, "O Claudio apresentou a primeira ideia, automação residencial aplicada para pessoas com deficiência física, porem o grupo tem que analisar a ideia e fazer levantamento de outros temas para ter como segunda opção."),
(4, "Pesquisa de mercado para levantamento das ideias de funcionalidade do sistema"),
(5, "Cada integrante do grupo apresentou uma funcionalidade para elaboração do projeto."),
(6, "Após apresentação das funcionalidades, foram escolhidas as principais para dar inicio ao projeto."),
(7, "O grupo apresentou a ideia e proposta do projeto para a professora Daniela para saber se seria viável dar andamento ao assunto."),
(8, "A fim de ter mais uma opinião o grupo apresentou a ideia para o professor André."),
(9, "Após conversa com professor André o grupo resolveu mudar o tema para o gerenciador de sites, então pedimos sua opinião novamente"),
(10, "O grupo mais uma vez foi em busca de novas ideias para realizar e assim foi estabelecido uma nova data para apresentação do novo tema."),
(11, "O Claudio apresentou a ideia de um comparador de preços de supermercados."),
(12, "O grupo decidiu seguir com o comparador de preços."),
(13, "Inicialização da documentação referente a primeira banca tais como Introdução, Metodologia, Desenvolvimento e conclusão inicial."),
(14, "Delegação de tarefas para cada integrante do grupo, incluindo: documentação, design e parte técnica."),
(15, "Apresentação da introdução."),
(16, "Apresentação da metodologia."),
(17, "Foram apresentadas as funcionalidades do software."),
(18, "Elaboração da conclusão provisória."),
(19, "Elaboração dos Slides."),
(20, "Normalização da documentação para entrega da primeira prévia."),
(21, "O grupo realizou a apresentação da primeira banca."),
(22, "O grupo realizou uma reunião para discutir as orientações da previa do dia anterior. Também foram feitas atividades na aula de desenvolvimento mobile."),
(23, "Foi realizada reunião para alinhamento sobre o tema e avaliada possíveis alterações, foram delegadas pesquisas para os membros do grupo."),
(24, "Começamos a ter ideias para elaboração do nosso aplicativo."),
(25, "O grupo desenvolveu atividades no mysql workbench, recurso no qual futuramente será importante para o banco de dados de nosso projeto."),
(26, "Reunião para determinar logo do software."),
(27, "Reunião para definir o nome do projeto."),
(28, "Elaboração da atividade de desenvolvimento de sistemas, no qual foi apresentado o conceito de herança em c#."),
(29, "Criação do esboço do aplicativo referente ao nosso projeto."),
(30, "Elaboração da atividade de Banco de Dados, onde essa atividade era baseada nas informações do diário de bordo."),
(31, "Reunião da equipe a fim de delegar as funções para cada integrante a fim de dar continuidade ao trabalho."),
(32, "Desenvolver funcionalidades e requisitos"),
(33, "Foi aplicado o conceito de encapsulamento em c# podendo vir a ser utilizado no tcc."),
(34, "Integração das informações no esboço do aplicativo utilizando a junto do PHP com banco de dados."),
(35, "Esboço do trabalho de Banco de dados, onde iniciamos sua construção, sera dado continuidade a seu desenvolvimento nas próximas aulas."),
(36, "Reunião da equipe para determinar os casos de uso, as funcionalidades e começo da elaboração dos diagramas de classe."),
(37, "Verificação e adequação dos casos de uso, requisitos, funcionalidades e organização."),
(38, "Pesquisa sobre diagrama de caso de uso para inclusão no TCC."),
(39, "Analise e finalização das primeiras telas do software com php."),
(40, "Finalização do slide para apresentação do TCC e planejamento do visual das telas de cadastro do nosso website do projeto."),
(41, "Aplicação do conceito de herança na linguagem de c# podendo ser aplicado no tcc");

insert into tb_dificuldade values
(1, "Decisão do tema."),
(2, "Pesquisa de tema."),
(3, "Decisão  do tema do projeto."),
(4, "Legislação envolvida."),
(5, "Decisão das funcionalidades."),
(6, "Analise do tema como um todo."),
(7, "Decisão final sobre seguir com o tema escolhido."),
(8, "Decisão do tema para seguir com o trabalho de conclusão do curso."),
(9, "Decisão final do tema."),
(10, "Encontrar o tema ideal para iniciar o projeto."),
(11, "Analise de ideias final para o projeto."),
(12, "Neste momento nenhuma."),
(13, "Inicialização da documentação referente a primeira banca tais como Introdução, Metodologia, Desenvolvimento e conclusão inicial."),
(14, "Delegação de tarefas para cada integrante do grupo, incluindo: documentação, design e parte técnica."),
(15, "Dificuldades em saber o que abordar na introdução."),
(16, "Dificuldades em saber o que relatar na parte documental da metodologia."),
(17, "Foram apresentadas as funcionalidades do software."),
(18, "Abordagem da conclusão, uma vez que trata se apenas de uma expectativa sobre como será o projeto."),
(19, "Escolha das cores do layout."),
(20, "Aplicação das normas ABNT."),
(21, "Pesquisa aprofundada sobre os tipos de comercio. Apresentação da ideia como um todo, faltou informação."),
(22, "Não foram encontradas dificuldades."),
(23, "Não foi encontrado dificuldades."),
(24, "A principal dificuldade é ligar o banco de dados ao projeto."),
(25, "Não houve dificuldades."),
(26, "Relacionar cores do logo."),
(27, "O nome já estava registrado no registro.br."),
(28, "Não foi encontrada dificuldades."),
(29, "Um modo de expor todos os produtos de diferentes estabelecimentos."),
(30, "Algumas incertezas em relação a montagem da atividade, porem nada que impedisse a sua finalização."),
(31, "Elaboração da parte técnica."),
(32, "Associar funcionalidades e requisitos aos requisitos funcionais e não funcionais"),
(33, "Não foi encontrado dificuldades até o momento."),
(34, "Definir quais informações serão necessárias para inserção."),
(35, "O professor solicitou uma readaptação no trabalho para que seguisse um padrão adequado."),
(36, "Elaboração do diagrama de classe."),
(37, "Encontrar o máximo de requisitos funcionais e funcionalidades."),
(38, "Adequar os casos de uso ao tema do TCC."),
(39, "O armazenamento das informações inseridas na página."),
(40, "Não houve dificuldades."),
(41, "Não foi encontrada dificuldades até o momento.");

insert into tb_orientacao_professor_periodo values
(1, "Professora Daniela nos orientou sobre os possíveis obstáculos que encontraríamos em cada ideia apresentada por cada integrante do grupo."),
(2, "Sem orientações neste dia."),
(3, "Levantar o maior número de ideias, tendo 1 a mais caso necessite mudar o tema no futuro."),
(4, "Não houve orientação para esta atividade"),
(5, "Não houve orientação para esta atividade."),
(6, "Não houve orientação para esta atividade."),
(7, "A professora nos informou as principais dificuldades que seriam encontradas no decorrer do projeto."),
(8, "O professor nos informou sobre a inviabilidade de seguir com o tema, uma vez que é bastante burocrático trabalhar com médicos."),
(9, "O professor André nos apresentou as dificuldade e falta de tempo para finalizar um tema como esse."),
(10, "Orientação do professor André."),
(11, "Não houve orientação de professores nesta etapa."),
(12, "Não houve orientação."),
(13, "Não houve orientação."),
(14, "Não houve no dia."),
(15, "Incluir conteúdo histórico."),
(16, "Não houve este dia."),
(17, "Nenhuma nesta data."),
(18, "Não houve."),
(19, "Procurar a respeito da psicologia das cores."),
(20, "Não houve este dia."),
(21, "Professora Daniela nos orientou sobre as diferenças dos estabelecimentos e a importância em atender os menores estabelecimentos."),
(22, "Foi orientado pelo professor André a criação de novas páginas e a utilização de javascript para aplicações mobile que podem e serão uteis para a realização do TCC."),
(23, "Orientação do professor Renan na matéria de desenvolvimento de sistemas, onde foi demonstrado como realizar a orientação a objetos."),
(24, "O professor Anderson orientou em relação a utilização do PHP."),
(25, "Orientação referente a banco de dados, matéria ministrada pelo professor Rafael, onde foi apresentada funções no mysql workbench."),
(26, "A professora Francis auxiliou e avaliou o logo como ideal para o que o tema aborda."),
(27, "Não houve orientação específica sobre o TCC, mas o professor indicou sites para pesquisas."),
(28, "Orientação de como aplicar este tipo de estrutura, pelo professor Renan."),
(29, "Auxilio dos professores Anderson e Francis quanto a exibição das informações por meio de PHP."),
(30, "Atividade feita em grupo de TCC, que foi planejada pelo professor Rafael da disciplina de Banco de Dados."),
(31, "Ler o manual do TCC."),
(32, "O prof Andre deu orientações sobre aplicações mobile que serão uteis ao desenvolver nossa aplicação."),
(33, "Foi explicado o conceito e formas de utilizar o conteúdo no projeto de tcc."),
(34, "Auxilio dos professores Francis e Anderson quanto a inserção de informações e a ligação com o banco de dados."),
(35, "Sugestão de nosso projeto TIPMART oferecer a ideia de fidelizar os clientes ao nosso software/projeto. Essa ideia foi proposta pelo professor Rafael de Banco de dados."),
(36, "O professor nos informou alguns meios e técnicas para elaboração do diagrama de classe."),
(37, "O prof Rafael orientou sobre adicionar funcionalidades que fidelizem clientes."),
(38, "Orientação de como adequar ao tema do projeto."),
(39, "Fomos orientados pela professora Francis quanto ao modo de armazenar as informações no banco de dados."),
(40, "Durante a aula de banco de dados o professor Rafael permitiu que trabalhássemos em nosso projeto."),
(41, "O professor Renan nos passou o conceito básico de herança no visual studio em c#.");

insert into tb_orientacao_professor_proximo_periodo values
(1, "A professora nos orientou a estudar mais sobre os temas apresentados e assim escolher o tema que mais se enquadraria no perfil dos integrantes."),
(2, "Sem orientações neste dia."),
(3, "Não houve."),
(4, "Não houve orientação para esta atividade."),
(5, "Não houve orientação para esta atividade."),
(6, "Não houve orientação para esta atividade."),
(7, "Analisar a possibilidade de acrescentar agenda médica no projeto."),
(8, "Sugestão para analisar outro tema."),
(9, "Sugestão de escolha de outro tema."),
(10, "Não houve."),
(11, "Não houve orientação de professores nesta etapa."),
(12, "Não houve orientação."),
(13, "Não houve orientação."),
(14, "Não houve no dia."),
(15, "Não houve."),
(16, "Não houve este dia."),
(17, "Nenhuma nesta data."),
(18, "Não houve."),
(19, "Não houve para este dia."),
(20, "Não houve este dia."),
(21, "Professora Daniela nos orientou a focar nos mercados menores ao invés de optar pelos supermercados e hipermercados."),
(22, "Entrega de uma atividade onde seria desenvolvida uma página de “Contato”."),
(23, "Realizar pesquisa para dominar a ferramenta."),
(24, "Utilização do PHP para elaboração do projeto."),
(25, "O grupo deve entregar uma atividade de banco de dados no dia 22/03/2019."),
(26, "Verificação da existência do nome e escolher um disponível e que atenda ao tema."),
(27, "Não escolher um nome muito complexo."),
(28, "Foi passado uma atividade para fixação do conteúdo."),
(29, "Efetivar essas informações por meio de PHP."),
(30, "Durante a próxima aula a atividade deve ser entregue para análise e correção."),
(31, "Incluir casos de uso e diagramas."),
(32, "Desenvolver pagina de contato e testar design."),
(33, "Foi passado atividade para fixação e possível utilização em projetos voltado ao tcc."),
(34, "Popular o banco de dados com as informações selecionadas."),
(35, "Deve-se continuar o desenvolvimento do trabalho referente a modelagem e criação do diário de bordo no mysql workbench."),
(36, "Melhorar e acrescentar itens no diagrama de classe"),
(37, "Encontrar métodos para gerar fidelidade."),
(38, "Adequar a regra de negócios."),
(39, "Utilização das informações armazenadas no banco, para login dos usuários."),
(40, "Não houve orientações para o próximo período."),
(41, "Foi passado atividade para fixação.");

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