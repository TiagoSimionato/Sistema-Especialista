/*RESPOSTAS =======================================================================================================================*/

resposta(1, 2).
resposta(2, 100).
/*etc, onde temos resposta(numero da questao, resposta da questao).*/


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
	
	
/*DICAS ==========================================================================================================================*/
	
dica(1) :-
	nl,
	write('essa é a dica da questão 1'),
	nl.
	
dica(2) :-
	nl,
	write('essa é a dica da questão 2'),
	nl.
	
	
/*A AVENTURA =====================================================================================================================*/

eventos :-
	write('==============='),
	nl, nl,
	write('Ao final da escada você se depara com uma sala completamente branca e bem iluminada, mas um pouco menor do que esperaria de um grande laboratório.'),
	nl, nl,
	write('O lugar parece limpo e não há nada lá além de um cano de metal no canto esquerdo da sala, e de uma porta do outro lado que da acesso para áreas mais profundas do laboratório.'),
	nl, nl,
	write('O que você faz? ( 1. Checar o cano; 2. Ignorar o cano): '),
	read(E1), /*escolha 1*/
	
	(	E1 = 1 -> pergunta(1);
		pergunta(2)
	).

/*FUNÇÕES ========================================================================================================================*/
	
checa_resposta(N, X, D) :-
	(	resposta(N, X) -> write('Você acertou!'), nl, string_to_list(D, "n");
		write('Você errou! Gostaria de receber uma dica? (y/n)'), nl, read(D), nl
	).

pergunta(Y) :-
	nl,
	enunciado(Y), /*chama o enunciado da pergunta Y*/
	nl,
	
	
	repeat,
		
		repeat,
			write('Resposta: '),
			read(X),
			nl,
			
			(	(X='dica' -> dica(Y)), nl;
				write('')
			),
		\+ X='dica',
		
		write('Resposta dada: '), write(X),	nl, nl,
		
		
		checa_resposta(Y, X, D),
		
		(	D=y -> dica(Y);
			write('')
		),
		
	resposta(Y, X).
	
	
	
/*ENREDO DA AVENTURA ===========================================================================================================*/

introducao(Nome) :-
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
	
	

/*INTERAÇÃO ===================================================================================================================*/

dados_jogador(Nome) :-
	write('Qual o seu nome? (Digite seu nome entre aspas simples e finalize com um ponto final; exemplo: \'Joao\'.)'),
	nl,
	read(Nome).
	
classes(Classe) :-
	nl,
	nl,
	write('MENU DE CLASSES: escolha uma das classes abaixo, digitando-a no campo de respostas.'),
	nl,
	write('classe1: tem isso, isso e isso.'),
	nl,
	write('classe2: tem isso, isso e isso.'),
	nl,
	write('classe3: tem isso, isso e isso.'),
	nl,
	write('classe4: tem isso, isso e isso.'),
	nl,
	write('classe5: tem isso, isso e isso.'),
	nl,
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
	write('2. Ao dar uma resposta não-numérica, coloque a palavra entre aspas simples; a menos que seja um caractere, este dispensa o uso de aspas.'),
	nl,
	write('3. A progressão do jogo é dada por meio da resolução de problemas matemáticos impostos pela aventura. Caso não saiba por 
           onde começar, digite "dica." no campo de respostas para receber uma dica relacionada a questão.'),
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
	introducao(Nome),
	eventos,
	nl,nl,
	encerramento.
