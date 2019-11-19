/*testes*/



/*FATOS*/

resposta(1, 2).
resposta(2, 100).
/*etc, onde temos resposta(numero da questao, resposta da questao)*/


/*QUESTÕES/ENUNCIADOS ============================================================================================================*/

enunciado(1) :-
	write('esse é o enunciado da questão 1!').
	
enunciado(2) :-
	write('esse é o enunciado da questão 2!').
	
dica(1) :-
	nl,
	write('essa é a dica da questão 1'),
	nl.
	
dica(2) :-
	nl,
	write('essa é a dica da questão 2'),
	nl.

/*===============================================================================================================================*/
	
checa_resposta(N, X, D) :-
	(	resposta(N, X) -> write('Você acertou!'), nl, string_to_list(D, "n");
		write('Você errou! Gostaria de receber uma dica? (y/n)'), nl, read(D), nl
	).


perguntas :-
	pergunta(1),
	pergunta(2).
	

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
	
	
	

/*==============================================================================================================================*/

dados_jogador(Nome) :-
	write('Qual o seu nome? (Digite seu nome entre aspas simples e finalize com um ponto final; exemplo: \'Joao\'.)'),
	nl,
	read(Nome).
	
classes(Classe) :-
	nl,
	nl,
	write('MENU DE CLASSES: escolha uma das classes abaixo, digitando-a no campo de respostas.'),
	nl,
	write('classe 1'),
	nl,
	write('classe 2'),
	nl,
	write('classe 3'),
	nl,
	write('classe 4'),
	nl,
	write('classe 5'),
	nl,
	write('Eu quero ser um(a): '),
	read(Classe),
	nl.

regras :-
	nl,
	nl,
	
	write('REGRAS =========================================================================================================='),
	nl,
	write('1. Ao dar uma resposta, SEMPRE coloque um ponto final, caso contrário, o programa não reconhecerá a sua resposta.'),
	nl,
	write('2. Ao dar uma resposta não-numérica, coloque a palavra entre aspas simples; a menos que seja um caractere, este dispensa o uso de aspas.'),
	nl, nl,
	write('O não cumprimento das regras acima fará com que o programa seja executado de forma incorreta.'),
	nl,	
	write('================================================================================================================='),
	
	nl,
	nl.

introducao(Nome) :-
	write('É o ano de 3052.'), nl, 
	write('Embora inúmeros avanços tecnológicos conduziram a humanidade a um futuro utópico, eles também foram a causa de sua queda subsequente.'), nl, 
	write('Depois da descoberta de motores capazes de transformar diferentes tipos de energia com até 80% de eficiência e de novas formas altamente'), nl,
	write('produtivas e baratas de extração de energia através da fissura nuclear de átomos, nações rapidamente começaram a conspirar umas contra as outras para a obtenção desse conhecimento.'), nl,
	write('O mundo se tornou um caos, e em meio a guerras e desenvolvimento tecnológico, 60% da humanidade e suas contruções foram dizimadas.'), nl,
	write('Ironicamente, uma parte do conhecimento obtido pela humanidade a um preço tão alto agora está perdido na destruição.'), nl,
	write('Esta nova realidade sem regras é a deixa perfeita para um caçador de tesouros, você, entrar em ação.'), nl,
	write('Com o objetivo de encontrar um livro antigo #(contendo??), você embarca em uma viagem para um laboratório outrora renomado pelas aplicações lá implamentadas,'), nl,
	write('mas que hoje se encontra aos pedaços depois de ser alvo de muitos ataques estrangeiros.'), nl,
	write('A viagem até lá não é fácil ao passo que surgem saqueadores e ladrões ao longo do caminho.'), nl,
	write('Apesar de ferido, você consegue despistar o perigo e chegar ao destino, mas esse é apenas o começo...'), nl,
	write('Você acorda em uma clareira no que aparenta ser o final de uma floresta.'), nl,
	write('As árvores ao redor misturadas com restos de androides indicam que uma batalha foi travada neste lugar,'), nl,
	write('uma fogueira estala em sua frente e uma ligeira dor de cabeça lhe atormenta.'), nl,
	write('Sua memória não funciona muito bem, mas você consegue se lembrar de ser um...'), nl,
	nl,
	
	classes(Classe),
	
	write('Você se levanta e caminha para as ruínas ao lado da clareira.'), nl,
	write('Em cima da entrada, estão escritas as palavras "Centro de Pesquisa ______" em relevo no granito parcialmente despedaçado.'), nl,
	write('Logo abaixo do letreiro há uma longa escada de tijolo rachado que leva para o subsolo.'), nl,
	write('Em algum lugar lá embaixo, o ##(tesouro) lhe aguarda.'), nl,
	write('Você desce os degraus tendo em mente os perigos que espera encontrar andiante.'), nl,
	write('Afinal, o conhecimento da humanidade adquiriu tamanha importância que era necessário confiná-lo em lugares extremamente seguros para evitar que espiões de outros países o roubasse.'), nl,
	nl.
	
encerramento :-
	write('Este é o fim da sua jornada... <encerramento aqui>').

iniciar :-
	write('nome do programa aqui'),
	nl,
	dados_jogador(Nome),
	regras,
	introducao(Nome),
	perguntas,
	nl,nl,
	encerramento.
	
