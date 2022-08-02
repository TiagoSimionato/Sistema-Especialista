/************************************************************************************************************************************
*	PARA INICIAR O PROGRAMA, É NECESSÁRIO DIGITAR "iniciar." NO CONSOLE.
*
*
************************************************************************************************************************************/

/*
as funções random(0,10,Elem1) e random_between(0,10,Elem1) geram números aleatórios. A primeira não inclui os extremos;
a segunda, sim.
*/

perde(1) :-
    write('primeira perda de vida.'), nl.
	
perde(101) :-
	write('segunda perda de vida.'), nl.

perde(201) :-
	write('terceira perda de vida.'), nl.

/*usuário errou todas as tentativas.*/
vidas(0) :-
	write('Você morreu.'), nl,
    morte,    
    abort.

/*situação de vida 1: o usuário errou pelo menos uma vez.*/
vidas(-1) :-
	write('').

/*situação de vida 2: o usuário não errou nenhuma vez.*/
vidas(-2) :-
	write(''), nl.

/*Y: número da pergunta; V: número de vidas*/
vidas(Y, V, Classe) :-
	
    /*primeiro laço de repetição: o laço para somente se a resposta do usuário for diferente de "dica".*/
	repeat,
		write('Resposta: '),
		read(X),
		nl,
		
		(	
			(X='dica' -> checa_dica(Y, 'y', Classe)), nl;
			write('')
		),
	\+ X='dica',
	
	write('Resposta dada: '), write(X),	nl, nl,
	
	
    /*verifica se a resposta X dada é válida, isto é, está na base de conhecimento.*/
	checa_resposta(Y, X, D, V, NV, Classe),
	
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
           \+ vidas(NV) ->  vidas(Y, NV, Classe);
          write('')
        )
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
    
	
/* N: número da questão
 * X: resposta da questão
 * D: dica, "y" se o usuário quer dica; "n", caso contrário
 * V: vida atual
 * NV: sinalizador de nova vida
 * VIC: vida inicial da classe
 * K: tipo de perda de vida
 */	
checa_resposta(N, X, D, V, NV, Classe) :-
	
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
			NV = 2 -> K is N;
			NV = 1 -> K is (N + 100);
			NV = 0 -> K is (N + 200)
		),
        perde(K), 
        write('Número de vidas atual: '), 
        write(NV), nl,
        (NV \= 0 -> write('Gostaria de receber uma dica? (y/n)'), nl, read(D), nl; vidas(NV))
	).



/*RESPOSTAS =======================================================================================================================*/

/*
 * Base de conhecimento, contém todas as respostas de acordo com a questão, temos resposta(nº da questao, resposta da questao).
 */
    
resposta(1, 2).
resposta(2, 100).
resposta(3, 3).


/*QUESTÕES/ENUNCIADOS ============================================================================================================*/

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
	
	
/*DICAS ==========================================================================================================================*/
dica(1) :-
	nl,
	write('essa é a dica da questão 1'),
	nl.
	
dica(2) :-
	nl,
	write('essa é a dica da questão 2'),
	nl.

dica(3) :-
	nl,
	write('essa é a dica da questão 3'),
	nl.

dica(101) :-
    nl,
    write('Essa é a dica extra do cientista.'),
    nl.

dica(102) :-
    nl,
    write('Essa é a dica extra do cientista.'),
    nl.

dica(103) :-
    nl,
    write('Essa é a dica extra do cientista.'),
    nl.
	
/*A AVENTURA =====================================================================================================================*/

eventos(Nome, Classe) :-
	write('==============='),
	nl, nl,
	write('Ao final da escada você se depara com uma sala completamente branca e bem iluminada, mas um pouco menor do que esperaria de um grande laboratório.'),
	nl, nl,
	write('O lugar parece limpo e não há nada lá além de um cano de metal no canto esquerdo da sala, e de uma porta do outro lado que da acesso para áreas mais profundas do laboratório.'),
	nl, nl,
	write('O que você faz? ( 1. Checar o cano; 2. Ignorar o cano): '),
	read(E1), /*escolha 1*/
	
	(	
		E1 = 1 -> pergunta(1, Classe);
		pergunta(2, Classe)
	),
	
    
    pergunta(3, Classe).

/*FUNÇÕES ========================================================================================================================*/
	


pergunta(Y, Classe) :-
	nl,
	enunciado(Y), /*chama o enunciado da pergunta Y*/
	nl,
	
    /*Se o jogador for um android, ele terá uma vida a mais que os demais*/
    (
    	(Classe = 'androide'; Classe = 'Androide') -> V is 4;
    	V is 3
    ),
	
	vidas(Y, V, Classe).
	
	
	
/*ENREDO DA AVENTURA ===========================================================================================================*/

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

encerramento :-
	write('Este é o fim da sua jornada... <encerramento aqui>').
	
morte :-
    write('Este é o texto de morte').

/*INTERAÇÃO ===================================================================================================================*/

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

regras :-
	nl,
	nl,
	
	write('REGRAS: LEIA COM ATENÇÃO ========================================================================================='),
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
	write('=================================================================================================================='),
	
	nl,
	nl.

iniciar :-
	write('<nome do programa aqui>'),
	nl, nl,
	dados_jogador(Nome),
    write('Seja bem vindo(a) ao <nome do programa>, '),
    write(Nome), write('!'),
	regras,
	introducao(Nome, Classe),
	eventos(Nome, Classe),
	nl,nl,
	encerramento.
