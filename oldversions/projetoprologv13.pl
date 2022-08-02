/*********************************************************************************
*	PARA INICIAR O PROGRAMA, É NECESSÁRIO DIGITAR "iniciar." NO CONSOLE.
*
*
*********************************************************************************/


/*****************************************************************
*	RESPOSTAS (FATOS)
*
*	Base de conhecimento, contém todas as respostas 
*	de acordo com a questão, seguindo a estrutura:
*
*	"resposta(nº da questao, resposta da questao)".
*****************************************************************/

resposta(1, 2).
resposta(2, 100).
resposta(3, 3).





/****************************************************************
*	DICAS E DICAS EXTRAS
*
*	Base de dicas, contém todas as dicas e também
*	as dicas extras que apenas o ciborgue consegue
*	acessar. Seguem a seguinte estrutura:
*
*	"dica(nº da questão)": fornece a dica relacionada
*	à questão "n";
*
*	"dica(nº da questão + 100)": fornece a dica extra
*	para jogadores que escolherem a classe Ciborgue.
*****************************************************************/

dica(1) :-
	nl,
	write('essa é a dica da questão 1'),
	nl.
	
dica(101) :-
    nl,
    write('Essa é a dica extra 1 do cientista.'),
    nl.
	
dica(2) :-
	nl,
	write('essa é a dica da questão 2'),
	nl.
	
dica(102) :-
    nl,
    write('Essa é a dica extra 2 do cientista.'),
    nl.

dica(3) :-
	nl,
	write('essa é a dica da questão 3'),
	nl.

dica(103) :-
    nl,
    write('Essa é a dica extra 3 do cientista.'),
    nl.
	
dica(4) :-
	nl,
	write('essa é a dica da questão 4'),
	nl.

dica(104) :-
    nl,
    write('Essa é a dica extra 4 do cientista.'),
    nl.
	
dica(5) :-
	nl,
	write('essa é a dica da questão 5'),
	nl.

dica(105) :-
    nl,
    write('Essa é a dica extra 5 do cientista.'),
    nl.





/***************************************************************
*	MORTES/PERDAS DE VIDA
*
*	Textos encadeados que fazem com que o jogador
*	perca vidas. Dificilmente perdas de vidas serão
*	iguais entre salas. Seguem a seguinte estrutura:
*
*	"perde(nº do tipo de perda de vida)": quando o
*	jogador perde vida pela primeira vez;
*
*	"perde(nº do tipo de perda de vida + 100)": quando
*	o jogador perde vida pela segunda vez;
*
*	"perde(nº do tipo de perda de vida + 200)": quando
*	o jogador perde vida pela terceira e última vez;
*
*	Os jogadores que escolherem a classe Androide
*	terão uma pequena diferença em que a primeira perda
*	de vida é, na verdade, a segunda e assim sucessivamente.
**************************************************************/

perde(1) :-
    write('Subitamente surgem várias lacunas nas paredes e delas aparecem incontáveis armas de fogo dos mais variados tipos. Sem perder tempo você corre para encontrar a resposta que procura.'), nl.
	
perde(101) :-
	write('Cada arma presente na câmara se volta para você. Dezenas de lasers brilham em seu corpor. Você começa a suar frio.'), nl.

perde(201) :-
	write('Tarde demais. As armas começaram a disparar e não há como reagir.'), nl.
	
	


perde(2) :-
    write('Uma grande tela surge na câmara. Nela há um desenho de uma bomba e uma contagem regressiva. É melhor se apressar.'), nl.
	
perde(102) :-
	write('A contagem está rapidamente chegando a zero. É agora ou nunca!'), nl.

perde(202) :-
	write('Já era. A contagem alcança zero e por uma fração de segundo ouve-se o início de um barulho violento, mas rapidamente tudo se apaga. É o fim.'), nl.
	
	
	
perde(3) :-
    write('Fortes passos são dados do lado de fora da sala. Algo ou alguém se aproxima.'), nl.
	
perde(103) :-
	write('Você percebe que os passos pararam. Ao olhar para janela, nota que ali repousa um imenso sujeito; seu rosto é escuro devido a má iluminação, mas não parece nada amigável.'), nl.

perde(203) :-
	write('Coberto por um terno preto, o esguio homem com uma força sobrehumana quebra o vidro da parede. Aproxima-se com passos cada vez mais fortes. Sem tempo de reação, o rosto ausente de vida repousa agora abaixo de você, e suas gélidas mãos te levantam pelo pescoço.'), nl.





/***************************************************************
*	ENUNCIADOS (PERGUNTAS)
*
*	Textos que contém as perguntas que serão feitas ao jogador.
*	Seguem a seguinte estrutura:
*
*	"enunciado(número da pergunta)".
***************************************************************/

enunciado(1) :-
	write('Subitamente um barulho de engranagens rangendo ecoa e uma porta de metal se fecha bloqueando a entrada e uma parede de vidro desce impedindo o acesso ao corredor adiante.'),
	nl,
	write('Um vidro como aquele resiste até 4 pancadas com uma barra de ferro com o dobro de diâmetro daquela que você agora tem em mãos.'),
	nl,
	write('Sabendo que há uma relação de inversa proporcionalidade entre o número de pancadas e o diâmetro da barra,'),
	nl,
	write('qual o número mínimo de pancadas que você precisará exercer para que possa quebrar o vidro, escapar da sala e seguir adiante?'),
	nl.
	
enunciado(2) :-
	write('Quando você alcança o meio da sala um som agudo é disparado e um mecanismo que se assemelha a uma garra sai das paredes de cada um de seus lados e prende seus pés.'),
	nl,
	write('Ao olhar atentamente você observa a presença de um componente brilhante com vários fios conectados na base de cada uma das garras, que se encontram no chão.'),
	nl,
	write('Parece um componente importante! Por sorte, haviam algumas ##(bugigangas) em seu bolso que podem servir para serem arremessadas.'),
	nl,
	write('Você então estima que a sala branca tem aproximadamente 8 metros de largura  e sabe que cada peça tem X gramas e que sua altura é de X metros.'),
	nl,
	write('Com que força você deve arremesar a peça para desativar cada uma das garras e se libertar?').

enunciado(3) :-
    write('este é o enunciado 3.').





/***************************************************************
*	EVENTOS
*
*	Textos que ocorrem após dada uma resposta certa. Possuem
*	a seguinte estrutura:
*
*	"evento(nº da questão)".
*	
*	Nem todas as questões possuem um evento, isto é, existem perguntas
*	seguidas sem intermédio de texto entre elas.
***************************************************************/

evento(1) :-
	write('algum texto aqui que ocorre entre salas.').





/***************************************************************
*	CAMINHOS E ESCOLHAS
*
*	Textos que dão ao jogador uma opção de escolha, esta que será
*	captada pela função/regra "acontecimentos". Possuem a seguinte
*	estrutura:
*
*	"caminho(nº da escolha, resposta do jogador)".
***************************************************************/

caminho(1, E1) :-
	write('Ao final da escada você se depara com uma sala completamente branca e bem iluminada, mas um pouco menor do que esperaria de um grande laboratório.'),
	nl, nl,
	write('O lugar parece limpo e não há nada lá além de um cano de metal no canto esquerdo da sala, e de uma porta do outro lado que da acesso para áreas mais profundas do laboratório.'),
	nl, nl,
	write('O que você faz? ( 1. Checar o cano; 2. Ignorar o cano): '),
	read(E1).
	





/***************************************************************
*	FINAIS
*
*	Textos que dizem ao jogador o final do jogo. Possuem a
*	seguinte estrutura:
*
*	"final(nº do final de jogo)".
*	
*	O final do jogo varia conforme as decisões do jogador.
*	Um dos finais é possível de ser desbloqueado exclusivamente
*	pelos jogadores que optarem jogar com a classe Cientista.
***************************************************************/

final(0) :-
	nl,
	write('este é o texto de morte, o final insuficiente'),
	nl.
	
final(1) :-
	nl,
	write('este é o final ruim!'),
	nl.

final(2) :-
	nl,
	write('este é o final bom!'),
	nl.
	
final(3) :-
	nl,
	write('este é o final verdadeiro, exclusivo do cientista!'),
	nl.





/***************************************************************
*	SINALIZADORES DE VIDAS
*
*	Conjunto de regras que trabalham junto com a função/regra
*	"vidas(Y, V, K, Classe)". Sinalizam qual medidas devem ser
*	tomadas de acordo com a vida atual do jogador.
*****************************************************************/

vidas(0) :-
	/*usuário errou todas as tentativas.*/
	
	write('Você morreu.'), nl,
	write('É uma pena. As provações do laboratório se mostraram muito rigorosas. Agora, os mistérios que espreitavam suas profundezas jamais serão descobertos.'), nl,
    final(0),
	abort.

vidas(-1) :-
	/*situação de vida 1: o usuário errou pelo menos uma vez. O sinalizador "-1" indica que a vida do jogador deve ser restaurada.*/
	
	write('').

vidas(-2) :-
	/*situação de vida 2: o usuário não errou nenhuma vez. O sinalizador "-2" indica que a vida do jogador não precisa ser restaurada.*/
	
	write('').





/***************************************************************
*	MECÂNICAS DE JOGO
*
*	"Funções" (regras) que dizem como o jogo deve se comportar.
*	Cada regra tem um cabeçalho próprio que explica seu modo
*	de funcionamento.
***************************************************************/

pergunta(Y, Classe) :-
	nl,
	enunciado(Y), /*chama o enunciado da pergunta Y*/
	nl,
	
    /*Se o jogador for um android, ele terá uma vida a mais que os demais*/
    (
    	(Classe = 'androide'; Classe = 'Androide') -> V is 4;
    	V is 3
    ),
	
	/*pré-define os tipos de perda de vida do jogador*/
	perde_vidas(Y, K),
	
	vidas(Y, V, K, Classe).
	
vidas(Y, V, K, Classe) :-

	/*
	 * Y: número da pergunta; 
	 * V: número de vidas
	*/
	
	repeat,
		/*primeiro laço de repetição: o laço para somente se a resposta do usuário for diferente de "dica".*/
		write('Resposta: '),
		read(X),
		nl,
		
		(	
			(X='dica' -> checa_dica(Y, 'y', Classe)), nl;
			write('')
		),
	\+ X='dica',
	
	write('Resposta dada: '), write(X),	nl, nl,
	
    (
    	X = 'godmode' ->  write('godmode ativado.'), nl, write('A resposta para esta questão é: '), resposta(Y, W), write(W), nl, write('Avançando para próxima questão...'), nl;
    	
		/*Abaixo, verifica se a resposta X dada é válida, isto é, se está na base de conhecimento.*/
		(
			checa_resposta(Y, X, D, V, NV, Classe, K),

			/*checa se o usuário pediu dica na resposta da checagem acima.*/
			checa_dica(Y, D, Classe),


			/*
			 * Se a resposta dada estiver correta, o número de vidas será restaurado caso o usuário tenha perdido vidas.
			 * Se a resposta estiver errada, será verificado se a vida do usuário zerou. Se sim, o programa encerrará;
			 * se não, uma chamada recursiva será feita, porém agora o número de vidas será reduzido em 1.
			*/
			
			(	
				resposta(Y, X) -> ((NV > -2) -> write('Suas vidas foram restauradas.'), nl; write(''), nl);
				(   
				   \+ vidas(NV) ->  vidas(Y, NV, K, Classe);
				  write('')
				)
			)
		)
    ).
	
checa_resposta(N, X, D, V, NV, Classe, K) :-
	
	/******************************
	 * N: número da questão
	 * X: resposta da questão
	 * D: dica, "y" se o usuário quer dica; "n", caso contrário
	 * V: vida atual
	 * NV: sinalizador de nova vida
	 * VIC: vida inicial da classe
	 * K: tipo de perda de vida
	******************************/
	
    (
    	(Classe = 'androide'; Classe = 'Androide') -> VIC is 4;
    	VIC is 3
    ),
    
	(	resposta(N, X) -> write('Você acertou!'),
    						nl, 
                            string_to_list(D, "n"),
                            (V = VIC  -> NV is -2; NV is -1);
                            
		write('Você errou!'), nl,  
        NV is V-1,
		(
			NV = 2 -> J is K;
			NV = 1 -> J is (K+100);
			NV = 0 -> J is (K+200);
			write('')
		),
		
		(
			NV < 3 -> perde(J);
			write('')
		),
		
        write('Número de vidas atual: '), 
        write(NV), nl,
        (NV \= 0 -> write('Gostaria de receber uma dica? (y/n)'), nl, read(D), nl; vidas(NV))
	).

checa_dica(Y, D, Classe) :-
    K is (Y + 100),
    
	/*verifica se o jogador é um ciborgue e, caso seja, uma dica extra será dada*/
    (
    	(Classe = 'ciborgue'; Classe = 'Ciborgue') -> (D=y -> (dica(Y), dica(K)); write(''));
    	
    	(	
			D=y -> dica(Y);
			write('')
		)
    	
    ).

perde_vidas(Y, K) :-
	/*O Y VAI SERVIR POSTERIORMENTE PRA QUE POSSAMOS DIRECIONAR UMA MORTE ESPECÍFICA DEPENDENDO DA QUESTÃO, USANDO IFS E ELSES ABAIXO*/
	(
		(Y = 1; Y = 2) -> random_between(1, 2, K);
		Y = 3 -> K is 3
	).
	
decide_final(final, E1, E2, E3, E4) :-
	write('aqui será a função que decide o final').





/***************************************************************
*	DADOS DO JOGADOR
*	
*	Recolhe informações do jogador que serão importantes para
*	aventura.
***************************************************************/

dados_jogador(Nome) :-
	write('Qual o seu nome? (Digite seu nome entre aspas simples e finalize com um ponto final; exemplo: \'Joao\'.)'),
	nl,
	read(Nome).
	
classes(Classe) :-
	nl, nl,
	write('MENU DE CLASSES: escolha uma das classes abaixo, digitando-a no campo de respostas.'), nl,
	write('Cientista: Mestre da experimentação (mais opções de caminho).'), nl,
	write('Ciborgue : Consegue enxergar mais do que os olhos podem ver (recebe uma dica extra por fase).'), nl,
	write('Androide : Carrega várias peças extras para se reparar (tem uma vida extra por fase).'), nl,
	write('Eu quero ser um(a): '),
	read(Classe),
	nl.


/***************************************************************
*	ESTRUTURA PRINCIPAL
*	
*	Regras que dão início ao jogo e que mantém a sequência de
*	narração.
***************************************************************/

iniciar :-
	write('<nome do programa aqui>'),
	nl, nl,
	dados_jogador(Nome),
    write('Seja bem vindo(a) ao <nome do programa>, '),
    write(Nome), write('!'),
	regras,
	introducao(Nome, Classe),
	acontecimentos(Nome, Classe),
	nl,nl,
	encerramento.

regras :-
	nl,
	nl,
	
	write('REGRAS DO JOGO: POR FAVOR, LEIA COM ATENÇÃO! ==========================================================================='),
	nl,
	write('1. Ao dar uma resposta, SEMPRE coloque um ponto final, caso contrário, o programa não reconhecerá a sua resposta.'),
	nl,
	write('2. Este Jogo funciona como uma narrativa interativa. Ao longo da história, serão apresentados problemas e escolhas ao protagonista, 
			interpretado por você, que exigirão uma resposta para prosseguir com a aventura.'),
	nl,
	write('3. Todas as perguntas que exigem respostas númericas devem ser respondidas com números inteiros (e apenas números, dispensando caracteres alfabéticos).'),
	nl,
	write('4. Ao dar uma resposta não-numérica, coloque a palavra entre aspas simples; a menos que seja um caractere, este dispensa o uso de aspas.'),
	nl,
	write('5. Caso não saiba por onde começar, digite "dica." no campo de respostas para receber uma dica relacionada a questão.'),
	nl,
	write('6. Errar uma pergunta fará com que você perca uma vida. São, ao todo, 3 vidas por fase (exceto o Androide, que tem 4). Caso o seu
			total de vidas chegue a zero, o jogo será encerrado.'),
	nl, nl,
	write('O não cumprimento das regras acima fará com que o programa seja executado de forma incorreta.'),
	nl,	
	write('========================================================================================================================'),
	
	nl,
	nl.

introducao(Nome, Classe) :-
	write('É o ano de 3052.'), nl, nl,
	write('Embora inúmeros avanços tecnológicos tenham conduzido a humanidade para um futuro utópico, eles também foram a causa de sua queda subsequente.'), nl, nl,
	write('Depois da descoberta de motores capazes de transformar diferentes tipos de energia com até 80% de eficiência, e de novas formas altamente 
           produtivas e baratas de extração de energia através da fissura nuclear de átomos, nações rapidamente começaram a conspirar umas contra as 
           outras para a obtenção desse conhecimento.'), nl, nl,
	write('O mundo se tornou um caos, e em meio a guerras e desenvolvimento tecnológico, cerca de 60% da humanidade e suas contruções foram dizimadas.'), nl, nl,
	write('Ironicamente, uma parte do conhecimento obtido pela humanidade a um preço tão alto agora está perdido na destruição.'), nl, nl,
	write('Esta nova realidade sem regras é a deixa perfeita para um caçador de tesouros, você, entrar em ação.'), nl, nl,
	write('Com o objetivo de encontrar um livro antigo #(contendo??), você embarca em uma viagem para um laboratório outrora renomado 
           pelas aplicações lá implementadas, mas que hoje se encontra aos pedaços depois de ser alvo de muitos ataques estrangeiros.'), nl, nl,
	write('A viagem até lá não é fácil ao passo que surgem saqueadores e ladrões ao longo do caminho.'), nl, nl,
	write('Apesar de ferido, você consegue despistar o perigo e chegar ao destino, mas esse é apenas o começo...'), nl, nl, nl,
    
    write('CAPÍTULO I: <nome do capítulo aqui>'), nl, nl,
    
	write('Você acorda em uma clareira no que aparenta ser o final de uma floresta.'), nl, nl,
	write('As árvores ao redor, misturadas com restos de androides, indicam que uma batalha foi travada neste lugar; 
           uma fogueira estala em sua frente e uma ligeira dor de cabeça lhe atormenta.'), nl, nl,
	write('Sua memória não funciona muito bem, mas você consegue se lembrar de ser um...'),
	
	classes(Classe),
	
	write('Você se levanta e caminha para as ruínas ao lado da clareira.'), nl, nl,
	write('Em cima da entrada, estão escritas as palavras "Centro de Pesquisa ______", em relevo, no granito parcialmente despedaçado.'), nl, nl,
	write('Logo abaixo do letreiro, uma longa escada formada por tijolos rachados leva ao subsolo.'), nl, nl,
	write('Em algum lugar lá embaixo, o ##(tesouro) lhe aguarda.'), nl, nl,
	write('Você desce os degraus tendo em mente os perigos que espera encontrar adiante.'), nl, nl,
	write('Afinal, o conhecimento da humanidade adquiriu tamanha importância que era necessário 
           confiná-lo em lugares extremamente seguros para evitar que espiões de outros países o roubasse.'), nl,
	nl.

acontecimentos(Nome, Classe) :-
	nl, nl,
	
	/*E1 = escolha 1 do jogador*/
	caminho(1, E1),
	(	
		E1 = 1 -> pergunta(1, Classe);
		pergunta(2, Classe)
	),
	
    
    pergunta(3, Classe).

encerramento :-
	write('Este é o fim da sua jornada... <encerramento aqui> + créditos').
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/********************************************
OBSERVAÇÕES E ANOTAÇÕES ÚTEIS

as funções random(0,10,Elem1) e random_between(0,10,Elem1) geram números aleatórios. A primeira não inclui os extremos;
a segunda, sim.
*********************************************/
