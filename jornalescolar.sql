-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 03:49 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jornalescolar`
--
CREATE DATABASE IF NOT EXISTS `jornalescolar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornalescolar`;

-- --------------------------------------------------------

--
-- Table structure for table `ano`
--

DROP TABLE IF EXISTS `ano`;
CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `categoria`) VALUES
(1, 'Artigos'),
(2, 'Automobilístico'),
(3, 'Ciência e Inovação'),
(4, 'Concursos e Empregos'),
(5, 'Cultura e lazer'),
(6, 'Dicas de Estudo'),
(7, 'Economia'),
(8, 'Educação'),
(9, 'Enem e Vestibular'),
(10, 'Entretenimento'),
(11, 'Esporte'),
(12, 'Fato ou Fake'),
(13, 'Mundo'),
(14, 'Meio Ambiente'),
(15, 'Newsletter'),
(16, 'Podcasts e Vídeos'),
(17, 'Política'),
(18, 'Pop & Arte'),
(19, 'Saúde e Bem-estar'),
(20, 'Tecnologia'),
(21, 'Turismo e Viagem');

-- --------------------------------------------------------

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `materia` text DEFAULT NULL,
  `idRedator` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`idMateria`, `titulo`, `materia`, `idRedator`, `idCategoria`, `ano`, `mes`, `dia`) VALUES
(1, 'Sintomas do Home Office', 'Sintomas físicos como dores na coluna, na cabeça e fadiga durante o home office estão associados a baixos índices de saúde mental e bem-estar. É o que mostra um levantamento realizado pelo Centro de Estudos em Planejamento e Gestão de Saúde da Fundação Getúlio Vargas (FGV), publicado nesta sexta-feira (9).\r\n\r\nA pesquisa, divulgada pela Agência Bori, foi realizada em parceria com o Institute of Employment Studies (IES) do Reino Unido, por meio da aplicação de um questionário on-line a 653 trabalhadores brasileiros, no período de 1 de junho a 30 de agosto. Entre os participantes, 87,7% afirmaram ter começado a trabalhar remotamente devido à pandemia da Covid-19.\r\n\r\nA maioria dos entrevistados relatou uma frequência um pouco ou muito maior que o habitual de desconforto ou dores nas costas, no pescoço e nos ombros. Problemas de sono, fadiga ocular, cansaço excessivo e cefaleias ou enxaquecas também foram sintomas da maioria.\r\n\r\n— Vimos uma relação estatística muito forte de que quem tem indicador de bem-estar baixo também tem sintomas físicos. Precisamos pensar não só em dar um suporte em termos de postura, remédio para dor de cabeça, mas ajudar as pessoas a trabalharem esse lado emocional e social — afirma Alberto José Ogata, pesquisador do FGV Saúde e autor do estudo.\r\n\r\nOs trabalhadores relataram também a maior ocorrência de outros problemas, como a preocupação com as questões financeiras da família (35,8%), ansiedade com a saúde de um parente (30,1%) e sensação de isolamento e solidão (11,5%).\r\n\r\nOs pesquisadores também aplicaram um questionário da Organização Mundial da Saúde (OMS) que avalia o estado de humor, vitalidade e interesse geral em uma escala de 0 a 25. Quase metade dos participantes (45,6%) teve um índice igual ou inferior a 13, considerado abaixo do esperado. Isso significa que eles podem ter algum grau de depressão ou baixo nível de bem-estar.\r\n\r\nOgata destacou que os índices de saúde mental e bem-estar analisados foram mais baixos entre as mulheres, que muitas vezes se sobrecarregam com a casa e os filhos.\r\n\r\n— É comum ouvirmos a narrativa dos homens de “eu ajudo” com as tarefas, mas não está. Só ajudar não é suficiente — ressalta o médico.\r\n\r\nO estudo mostrou, ainda, que pessoas que moram sozinhas também tiveram índices abaixo do recomendado.\r\n\r\n— São os dois extremos. Se a pessoa fica o tempo todo sozinha, isso acaba não sendo bom para a saúde. E se ela está em uma casa onde tem muita gente, se sobrecarrega — explica.', 2, 19, 2020, 10, 9),
(2, 'God of War: Ragnarok é \'confirmado\' com mensagem codificada', 'O anúncio de God of War Ragnarok foi realizado no último PlayStation Showcase, mas os fãs descobriram que a confirmação do novo jogo pode ter acontecido há mais de um ano por meio de uma mensagem codificada.\r\n\r\nEm 21 de abril de 2019, Cory Barlog, diretor de God of War, fez uma thread no Twitter com os bastidores dos desafios de reimaginar a franquia. A série de postagens possui um total de 16 tweets, e se você juntar as letras iniciais de cada um deles, terá a mensagem \"Ragnarok is Coming\" formada -- isso mesmo, o \"Ragnarok está chegando\", no bom português.\r\n\r\nUm dos seguidores de Barlog decifrou a mensagem em resposta à thread, como você pode conferir no link a seguir: https://t.co/q2kM5VrNO2\r\n\r\nGod of War: Ragnarok será lançado para PlayStation 5 em 2021.\r\n', 5, 10, 2020, 9, 22),
(5, 'Neuralink: o chip que conecta seu cerébro aos computadores', 'Dispositivo é capaz de ler e escrever atividades cerebrais por meio de eletrodos inseridos em pequena cavidade no crânio.\r\n\r\nApós uma longa espera, Elon Musk finalmente revelou os primeiros detalhes sobre o chip que pretende conectar o cérebro humano a computadores. A ideia é que o dispositivo fique colado – literalmente – ao seu crânio, e que possa realizar funções semelhantes às de um dispositivo vestível, como um smartwatch, por exemplo.\r\n\r\nPara além das funções de wearables comuns, o interesse da Neuralink é proporcionar soluções para condições neurológicas, como perda de memória, audição ou visão, e até doenças como depressão e ansiedade.\r\n\r\nÉ claro que ainda falta muito para que isso aconteça, de fato. Atualmente, o chip está sendo testado em animais – durante a apresentação, Musk mostrou como o implante é capaz de ler atividades cerebrais em porcos, enquanto uma cobaia farejava o chão de um pequeno cercado montado no palco.\r\n\r\nA arquitetura do projeto recebeu diversos avanços no último ano, passando de um dispositivo com diversas ramificações consideravelmente extensas para um chip pequeno, com 1.024 pequenos eletrodos de espessura menor do que um décimo de um fio de cabelo, que ficam alocados em uma cavidade feita no crânio.\r\n\r\nAlém de ler a atividade cerebral, esses eletrodos também são capazes de enviar informações ao cérebro, estimulando neurônios e induzindo reações aos impulsos elétricos.\r\n\r\nDe acordo com Musk, o implante não será visível – o resultado, após a cirurgia, seria apenas uma pequena cicatriz, que ficaria coberta pelo cabelo. O chip teria bateria para um dia inteiro, e poderia ser carregado facilmente à noite, por indução, da mesma forma que se você carrega um Apple Watch, por exemplo.\r\n\r\nJá a cirurgia seria feita por um robô bem simpático, semelhante a uma máquina de costura, que seria o responsável por inserir as pequenas agulhas no seu cérebro. O processo poderia ser feito em uma manhã, e você poderia deixar o hospital à tarde – sem a necessidade de anestesia geral.\r\n\r\nA Neuralink recebeu a designação de “dispositivo inovador” da FDA, e está resolvendo algumas questões pendentes com testes de segurança para posteriormente iniciar os primeiros implantes em humanos.\r\n\r\nE é com essa notícia, e a demonstração realizada, que Elon Musk pretende conseguir pessoas interessadas no projeto para trabalhar no aprimoramento do chip. De acordo com ele, a empresa busca por neurocientistas, engenheiros, especialistas em robótica e até mesmo profissionais que cuidem dos animais durante o processo. Os interessados podem se inscrever no site da Neuralink.\r\n\r\nMas, e aí, você colocaria um chip desses no seu cérebro?\r\n', 1, 3, 2020, 8, 28),
(6, 'Pagamentos com a palma da mão na Amazon', 'A Amazon anunciou que realizará testes de uma tecnologia de biometria para autenticar pagamentos usando a palma da mão.\r\n\r\nChamado de \'Amazon One\', o sistema irá identificar um cliente e os dados de cartão de crédito no momento em que a pessoa posicionar sua mão sobre uma estação com câmera.\r\n\r\nA novidade estará nas lojas físicas da empresa em Seattle, nos EUA, que já contam com sistemas de pagamento que dispensam caixas.\r\n\r\nO dispositivo poderá ser usado pelas pessoas que não quiserem colocar as compras no carrinho automatizado ou não tiver o app da loja.\r\n\r\nQuem optar pela autenticação da palma da mão não precisa ter uma conta na Amazon: ao chegar na loja, é necessário fazer o cadastro da palma da mão em um dos aparelhos, inserir o cartão de crédito e associar número de telefone.\r\n\r\nEsses dados podem ser apagados no site do Amazon One. A companhia defende que a palma da mão traz mais benefícios de privacidade em relação a outras tecnologias como o reconhecimento facial, embora precise construir um banco de dados com informações de clientes.\r\n\r\n\"Você não pode determinar a identidade de uma pessoa olhando para uma imagem da palma de sua mão\", disse Dilip Kumar, vice-presidente de negócios físicos da Amazon.\r\n\r\n\"Também exige que uma pessoa faça um gesto intencional ao colocar a palma sobre o dispositivo para realizar a autenticação\", completou.\r\n\r\nSegundo a empresa, esse tipo de autenticação biométrica é segura, já que cada pessoa tem características únicas na mão que formam uma espécie de “assinatura digital”.\r\n\r\nA Amazon vai expandir os testes em mais de suas lojas nos próximos meses, mas planeja oferecer essa nova autenticação em outros setores.\r\n\r\nO sistema pode ser utilizado para substituir ingressos em shows e estádios ou crachás de acessos em empresas, por exemplo.', 1, 20, 2020, 9, 29),
(7, '10 dicas de estudo na pandemia', 'O isolamento espacial, necessário para minimizarmos a propagação do coronavírus, obriga-nos a reorganizar nossos hábitos diários e aprender formas novas de mantermos nossa rotina de forma geral. Com a rotina de estudos não é diferente!\r\n\r\nSeguem abaixo algumas dicas para você reinventar sua rotina de estudos, mantendo a programação em dia com o melhor aproveitamento possível:\r\n\r\n1. Ambiente de estudo: espaço físico adequado para aulas virtuais\r\nReserve um local para você assistir e estudar as aulas. É importante que seja um espaço silencioso e que não haja interrupções. Combine com sua família um local da casa a ser preservado para você manter seu foco.\r\n\r\n2. Horários: mantenha os habituais\r\nComece a estudar no horário em que você começaria presencialmente. Isso evita a perda de tempo de estudo durante a quarentena e a necessidade de readaptação quando as aulas presenciais voltarem.\r\n\r\n3. Disciplina: autorregulação\r\nNão fique de pijama. Acorde, tome um banho e troque de roupa: isso vai ajudar a entrar no \"modo vestibulando\", agora que não há mais elementos externos como sinal sonoro para início das aulas, a companhia de colegas que te estimulavam a ir para a aula, dentre outras coisas.\r\n\r\n4. Aulas online: siga sua programação\r\nSeja rigoroso para assistir todas as suas aulas diárias no horário regular em que são oferecidas. Lembre-se: suas aulas continuam acontecendo e seguem uma programação. Quando as aulas voltarem ao ambiente externo, a programação continuará normalmente.\r\n\r\n5. Aulas online: tire o melhor proveito do pausar e voltar\r\nAssistir videoaulas oferece o recurso pausar e voltar. Isso é ótimo para você usar quando teve uma dúvida, o raciocínio não ficou tão claro ou, especialmente, quando chega naquela parte do conteúdo que você sabe ser mais complexa. Entretanto, pausar e voltar muitas vezes pode acarretar em gasto de tempo maior do que o disponível, e isso pode prejudicar o conjunto das aulas, não dando tempo de assistir todas. Tenha parcimônia para aproveitar esses recursos.\r\n\r\n6. Organização para estudar: você ganhou tempo por não precisar se deslocar\r\nAgora que você não precisa se deslocar pela cidade, então aproveite esse tempo para incrementar seus estudos: faça, por exemplo, mais exercícios dos conteúdos que são prioritários para você. Eles podem ser de matérias específicas ou aqueles em que você mais dificuldade.\r\n\r\n7. Redes sociais: compensar isolamento físico com redes sociais não vai ajudar\r\nDesligue as notificações de seus apps e estabeleça horários fixos para checar suas redes sociais. O isolamento social da quarentena pode provocar uma necessidade de ficar conectado nas redes sociais continuamente, o que atrapalha os estudos.\r\n\r\n8. Excesso de informações e notícias: evite distrações\r\nAcompanhe uma fonte confiável e se preserve do excesso de informações, porque ele pode fomentar ansiedade. Estamos expostos a um fluxo intenso de informações que pode ainda se acentuar com novas informações sobre o coronavírus, visto ser um assunto de interesse universal: a saúde pública.\r\n\r\n9. Estudar em Grupo\r\nSe você tem bom aproveitamento do estudo em grupo, utilize alguma plataforma online que possibilite uma reunião remota (hangout, whereby, zoom, entre outras são alternativas interessantes).\r\n\r\n10. Pratique exercícios físicos dentro de casa\r\nManter-se ativo fisicamente vai te fazer se sentir melhor e mais disposto. Alongar-se, subir e descer as escadas, usar pesos para fortalecer musculatura, fazer yoga e meditação são ótimas opções.\r\n', 4, 6, 2020, 3, 20),
(8, '11 animais do Brasil que podem sumir nos próximos anos', 'Segundo o Ministério do Meio Ambiente (MMA) e o Instituto Chico Mendes de Conservação da Biodiversidade (ICMBio), existem mais de mil espécies com risco de extinção no Brasil.\r\n\r\nIsso é mais triste, quando temos em mente que o Brasil é o país com a biodiversidade mais rica do mundo. Só no quesito pássaros em extinção, o Brasil lidera o ranking com maior número de espécies em extinção, seguido pela Indonésia.\r\n\r\nAs causas que levam a esse alto número de animais em extinção é grande. Tráfico de animais, queimadas, desmatamento, construção de hidrelétricas, poluição e caça predatória são os principais motivos.\r\n\r\n1 – Araraju\r\nTambém conhecida como Guaruba, a ararajuba vem sofrendo com o tráfico e o desmatamento. Sua espécie vive na Amazônia, mas pouco se sabe sobre seus hábitos, o que torna ainda mais difícil sua conservação.\r\n\r\n2 – Arara Azul\r\nEncontrada na Amazônia e Pantanal, essa ave é cobiçada por caçadores, já que suas asas possuem grande valor no mercado internacional. O desmatamento de seu habitat também é um problema.\r\n\r\n3 – Ariranha\r\nTambém chamado de lobo do rio ou lontra gigante, a ariranha sofre com a extinção devido a caça ilegal, poluição dos rios e pesca predatória, além da contaminação por mercúrio. É encontrada no Pantanal e Amazônia.\r\n\r\n4 – Baleia-franco-do-sul\r\nA baleia-franco-do-sul vive no litoral brasileiro. Ele sofre com a caça e pesca e com a poluição das águas.\r\n\r\n5 – Cervo-do-pantanal\r\nO maior cervídeo da América do Sul é encontrado no Pantanal, mas também vive na Amazônia e no Cerrado. A construção das hidrelétricas, o desmatamento e a caça ilegal são sua ameaça.\r\n\r\n6 – Gato-macarajá\r\nO gato-maracajá vive na Amazônia, no Cerrado, na Mata Atlântica, na Pampa e no Pantanal. Sofre coma venda de sua pele a anos. Atualmente, o desmatamento é o maior problema da espécie.\r\n\r\n7 – Lobo-guará\r\nO maior mamífero canídeo nativo da América do Sul, o lobo-guará é encontrado no Pantanal, Pampas e Cerrado. Seu grande problema é o desmatamento de seu habitat.\r\n\r\n8 – Macaco-aranha\r\nEncontrado na Amazônia, o macaco-aranha sofre com a destruição de seu habitat, caça ilegal e o tráfico de animais.\r\n\r\n9 – Mico-leão-dourado\r\nO mico-leão-dourado vive na Mata Atlântica e sofre com o desmatamento e o tráfico de animais. Sua espécie já foi quase eliminada ao longo das últimas décadas. Ainda existem poucas versões nas florestas do estado do Rio de Janeiro.\r\n\r\n10 – Onça-Pintada\r\nO maior felino das Américas, a onça-pintada é encontrada em quase todo o Brasil, com exceção do Pampa, no qual já está extinta. A destruição de seu habitat e sua pele possui grande valor de venda no mercado mundial, o que incentiva a caça ilegal e predatória.\r\n\r\n11 – Tamanduá-bandeira\r\nO tamanduá-bandeira vive na Amazônia, no Cerrado, na Mata Atlântica e no Pantanal. Esse bicho com as queimadas nas regiões em que vive,  como também com a criação de gado e o desmatamento.', 2, 14, 2020, 3, 18),
(9, 'Indiano cria retratos utilizando apenas sua máquina de escrever', 'O artista indiano AC Gurumurthy faz retratos impressionantes utilizando apenas sua máquina de escrever.\r\n\r\nEle conta que queria criar algo \"único\" e \"novo\" quando, em 1968, teve a ideia de usar sua máquina de escrever para fazer um retrato do senador americano Robert Kennedy, que havia sido assassinado.\r\n\r\nO resultado do trabalho foi publicado por vários jornais na época, segundo ele.\r\n\r\n\"Essa foi minha grande descoberta na vida e daquele dia em diante comecei a fazer tentativas regulares em máquinas de escrever. Fiz de 250 a 300 desenhos até agora.\"\r\n\r\nGurumurthy diz ainda que busca um recorde mundial do Guinness em breve, embora não seja claro sobre qual recorde específico almeja.\r\n\r\nSeu trabalho inclui retratos de figuras mundiais como Mahatma Gandhi, Madre Teresa e Nelson Mandela, assim como os renomados atores Bruce Lee e Charlie Chaplin. Ele também faz desenhos de animais e paisagens.\r\n\r\nGurumurthy já tinha treinamento profissional em máquina de escrever devido ao tempo em que trabalhou na área de finanças e pode digitar até 90 letras por minuto.\r\n\r\nAgora ele usa seu talento para perseguir a paixão pela arte. Um retrato leva cerca de 3 horas para ser concluído. O processo começa com um esboço inicial do tema e, em seguida, ele passa a \"digitar\" o retrato na maquina.\r\n\r\nO sombreamento das imagens é feito com a variação da pressão que ele aplica nas teclas, assim como os espaços deixados em branco.', 5, 18, 2018, 8, 10),
(10, 'Recuperação da economia mundial será desigual e incerta segundo FMI ', 'A recessão global em 2020 gerada pela pandemia do novo coronavírus será menos severa que o previsto inicialmente, mas o caminho para a recuperação vai ser \"longo, desigual e incerto\", advertiu hoje a diretora-gerente do FMI (Fundo Monetário Internacional), Kristalina Georgieva.\r\n\r\n\"O panorama é menos nefasto hoje. Avaliamos que a evolução no segundo e terceiro trimestres foi melhor do que o esperado, o que permite uma pequena revisão em alta do prognóstico global para 2020\", afirmou Georgieva, em um discurso antes da reunião semestral do FMI e do Banco Mundial, prevista para a próxima semana, em formato virtual.\r\n\r\nGeorgieva disse, no entanto, que o caminho para a recuperação será uma \"longa escalada\" e destacou que o avanço da economia vai ser \"longo, desigual e incerto\".\r\n\r\nEm 24 de junho, o FMI publicou uma atualização muito sombria de suas previsões, com a estimativa de uma contração da economia global de 4,9%, contra uma projeção de uma queda do PIB (Produto Interno Bruto) mundial de 3%, anunciada em abril.\r\n\r\nA diretora do FMI não antecipou números nesta terça-feira: a publicação do relatório WEO (Perspectivas da Economia Mundial, na sigla em português) acontecerá na próxima semana.\r\n\r\nManter os salva-vidas\r\n\r\nPara a América Latina e Caribe, o FMI projetou em junho uma contração do PIB de 9,4% em 2020.\r\n\r\nNa segunda-feira, porém, o Fundo melhorou consideravelmente a previsão para o Brasil este ano: de uma contração de 9,1% antecipada em junho para uma queda do PIB de 5,8%.\r\n\r\nEm seu discurso, Georgieva afirmou que, nos locais em que a pandemia persiste, é necessário \"manter os salva-vidas\" para a economia, as empresas e os trabalhadores.\r\n\r\n\"Se os salva-vidas forem cortados muito cedo, a longa escalada se transformará em uma queda vertiginosa\", disse.', 4, 7, 2020, 10, 6),
(11, 'Alteração na Carta Olímpica pode trazer mudanças históricas no esporte', 'O Comitê Olímpico Internacional (COI) analisa fazer uma importante mudança no mundo do esporte. Pressionado por atletas e federações, a entidade lançará em outubro uma pesquisa para discutir alterações na Regra 50, que proíbe qualquer tipo de manifestação ou propaganda política em eventos olímpicos ou esportivos. Em caso de alteração, a reforma passará a valer para as Olimpíadas de Tóquio 2021.\r\n\r\nAtletas têm voz importante na sociedade e são cobrados cada vez mais a se manifestarem. A Global Athlete (Movimento Internacional dos Atletas) foi uma das principais responsáveis em conseguir com que a entidade olímpica reveja e discuta mudanças na Regra 50 da Carta Olímpica. A pressão acontece há anos, porém ganhou ainda mais força depois que o presidente do COI, Thomas Bach, dizer que puniria os competidores que protestassem nos Jogos Olímpicos por causa da morte de George Floyd, homem negro asfixiado até a morte por policias nos Estados Unidos e que gerou uma onda de manifestações contra o racismo no mundo.\r\n\r\nSegundo Andrei Kampff, advogado especializado em Direito Dsportivo e colunista do Lei em Campo, \"tensão gera mudança, de fora para dentro. Mobilizados, os atletas mostraram a força que muitos ainda desconhecem ter, como se viu na NBA. Eles fazem parte da cadeia associativa do esporte. E, por isso, precisam ter voz nas discussões, inclusive sobre regras, A verdade é que a Lex Sportiva (sistema em que o esporte se organiza) sofre um \"déficit democrático\", como bem definiu o professor e colunista do Lei em Campo Wladimyr Camargos.\"\r\n\r\nA Regra 50 da Carta Olímpica determina que \"nenhum tipo de demonstração ou propaganda política, religiosa ou racial é permitida em qualquer evento olímpico, local, ou outras áreas\". Atualmente, só é liberado que o atleta se manifeste livremente nas zonas mistas e durante entrevistas. Caso aconteça o descumprimento, é previsto punições desportivas, suspensões e multas, podendo, inclusive, causar a perda dos patrocínios ao competidor.\r\n\r\nO COI alega que mantem a regra dessa forma para \"proteger a neutralidade do esporte e dos Jogos Olímpicos\". \r\n\r\nPara a advogada especialista em direito esportivo e colunista do Lei em Campo, Ana Paula Terra, é necessário que aconteça uma adequação da regra para os tempos atuais.\r\n\r\n\"O objetivo da regra não foi proibir a liberdade de expressão, mas seu conteúdo tem essa consequência. Não considero que a regra deva ser abolida, mas adequada aos novos tempos em que o atleta é conhecido por sua performance esportiva, mas a usa para promover causas e ideias. Assim, acredito que a regra deveria conter uma ressalva que ligasse a liberdade de expressão à competição, justamente os valores olímpicos. Crenças e agendas que fossem, ao contrário, racistas, a favor do nazismo, não deveriam ser permitidas, justamente por não combinarem com o espírito de união pregado pelo Olimpismo. Esse é o cuidado\", ressaltou a advogada.\r\n\r\nRecentemente, casos como o da brasileira Carol Solberg que gritou \'Fora Bolsonaro\' durante a premiação, do piloto inglês Lewis Hamilton e dos jogadores da NBA que cobraram justiça nos casos de racismo, chamaram a atenção do mundo. A jogadora de vôlei brasileira irá a julgamento, na próxima terça-feira (6), no STJD (Superior Tribunal de Justiça Desportiva) pelo ato e poderá ser punido com multa em até R$ 100 mil e suspensa das próximas competições.\r\n\r\n\"A liberdade de expressão não é absoluta. Nenhum direito fundamental é absoluto. No Brasil, a interpretação constitucional dessa liberdade é \'com responsabilidade\'. Cada vez mais os atletas, principalmente em países com maior tradição democrática, se sentem à vontade para fazer declarações e impor isso em jogos. Um exemplo é a NBA, que está fazendo isso agora, com a camisa dos jogadores contendo o nome deles e frases contra o racismo. Isso está ganhando um espaço cada vez maior, e o COI, e até o próprio Brasil, terão uma maior liberação para que os atletas possam se manifestar, inclusive dentro de quadra e do campo\", avaliou o advogado constitucionalista Daniel Falcão.\r\n\r\nNas discussões sobre possíveis mudanças na Regra 50, atletas que participaram da pesquisa divergem sobre o assunto. Alguns acreditam que é preciso um relaxamento total da regra, enquanto outros que se deve preservar o pódio olímpico e sua mensagem histórica. Há um consenso, ninguém quer posições extremistas, mas sim, liberdade de expressão na proteção de Direitos Universais, podendo se manifestar em casos que os direitos humanos forem feridos.\r\n\r\nAs ideias que servissem para justamente reafirmar os valores olímpicos, deveriam ser, inclusive, incentivadas. Assim, defesas do meio ambiente, da diversidade, da igualdade entre os povos, que sejam contrárias ao racismo e à exclusão de qualquer natureza, deveriam, na minha opinião, passar a ser aceitas em qualquer local, devendo ser regulado o que poderia ser usado em prol dessa manifestação de ideias\", completou Ana Paula Terra.', 3, 11, 2020, 10, 5),
(12, 'Fãs da Subaru quebram recorde histórico do maior desfile de carros da marca', 'Um desfile de 1.751 carros entrou para história como a maior parada de modelos da Subaru já feita. Ocorrida em 4 de outubro de 2020 no sul da Califórnia, o evento foi certificado pelo Guinness, Livro os Recordes. Os carros enfileirados ocuparam um espaço de pouco mais de 3 km. \r\n\r\nO desfile contou com uma boa diversidade de modelos, como os WRX STI recentes, GLs dos anos 1980 e até mesmo um 360.\r\n\r\nO antigo recorde de Subarus em um desfile havia sido aferido em 2015 em Moscou, na Rússia: 549 carros. O desfile desta semana fez parte de um encontro anual chamado Subiefest, que reúne entusiastas da marca de toda a América do Norte.\r\n\r\nPara entrar no evento, a organização pediu aos participantes que fizessem uma doação para o Feeding America - instituição de caridade que visa acabar com a fome. Os pagantes arrecadaram fundos para 241 mil refeições.\r\n\r\nO evento também foi usado pela Subaru para a exibição de um pequeno teaser da nova geração do BRZ, que deve estrear no ano que vem como modelo 2022.', 1, 2, 2020, 10, 6),
(13, 'Músicos de diferentes países tocam ‘Bohemian Rhapsody’ online', 'Isolados por causa do coronavírus – cada um em seu país – jovens músicos se uniram online para tocarem juntos. Eles escolheram “Bohemian Rhapsody”, lançada em 1975, pelo Queen, para mostrar como as dificuldades causadas pelos tempos atuais não impedem o surgimento de novas parcerias e amizades.\r\n\r\nCom um arranjo para piano, violinos e violoncelos, a música foi executada por artistas da Rússia, EUA, Itália, Japão, Cazaquistão e Suíça.\r\n\r\nEm suas casas, Joshua Brown, Anna Chenchikova, Ruslan Turuntaev, Mauro Paolo Monopoli, Simon Buerki, Anastasia Ushakova e Lisa Yasuda gravaram suas partes, depois editadas em um único vídeo (assista acima).\r\n\r\nPara selecionar quem participaria do projeto, nomeado #unitingrhapsody, foi lançado um desafio na internet, no qual cada músico tocou suas canções favoritas, com a intenção de mostrar que o poder da música pode unir todas as pessoas do mundo, mesmo quando fronteiras estão fechadas.\r\n\r\nA violoncelista Anastasia Ushakova, uma das participantes e vencedora da IX Competição Internacional Tchaikovsky para Jovens Músicos, disse à TV Brics: “Junto com amigos de diferentes países, preparamos Bohemian Rhapsody, do Queen. Espero que aqueça seus corações durante este momento difícil”.', 2, 5, 2020, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `redator`
--

DROP TABLE IF EXISTS `redator`;
CREATE TABLE `redator` (
  `idRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `DDD` varchar(3) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `idTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `redator`
--

INSERT INTO `redator` (`idRedator`, `nome`, `sobrenome`, `email`, `DDD`, `telefone`, `cidade`, `dia`, `mes`, `ano`, `idTurma`) VALUES
(1, 'Bianca', 'Silva', 'bianca.silva@gmail.com', '11', '99967-8186', 'Ribeirão Pires', 27, 7, 2004, 8),
(2, 'Anna', 'Silva', 'anna.silva@gmail.com', '11', '99540-9313', 'Mauá', 11, 7, 2005, 1),
(3, 'Lucas', 'Souza', 'lucas.souza@gmail.com', '11', '93437-9397', 'Rio Grande da Serra', 8, 3, 2000, 21),
(4, 'Gabriel', 'Castilho', 'biel.castilho@gmail.com', '11', '99995-5559', 'Santo André', 30, 8, 2003, 20),
(5, 'Érica ', 'Fonseca', 'erica.fons@gmail.com', '11', '94473-6131', 'Ribeirão Pires', 9, 2, 2004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
CREATE TABLE `turma` (
  `idTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turma`
--

INSERT INTO `turma` (`idTurma`, `turma`) VALUES
(1, '1A'),
(2, '2A'),
(3, '3A'),
(4, '1B'),
(5, '2B'),
(6, '3B'),
(7, '1C'),
(8, '2C'),
(9, '3C'),
(10, '1D'),
(11, '2D'),
(12, '3D'),
(13, '1F'),
(14, '2F'),
(15, '3F'),
(16, '1G'),
(17, '2G'),
(18, '3G'),
(19, '1H'),
(20, '2H'),
(21, '3H'),
(22, '4H'),
(23, '1I'),
(24, '2I'),
(25, '3I'),
(26, '1K'),
(27, '2K'),
(28, '3K');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idMateria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`),
  ADD KEY `idRedator` (`idRedator`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Indexes for table `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`idRedator`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `redator`
--
ALTER TABLE `redator`
  MODIFY `idRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_3` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_4` FOREIGN KEY (`idRedator`) REFERENCES `redator` (`idRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia_ibfk_5` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
