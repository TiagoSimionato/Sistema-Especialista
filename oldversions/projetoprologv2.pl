/*testes*/



/*FATOS*/

resposta(1, 2).
resposta(2, 100).
/*etc, onde temos resposta(numero da questao, resposta da questao)*/


/*QUESTÕES/ENUNCIADOS ============================================================================================================*/

questao(1) :-
	write('esse é o enunciado da questão 1!').
	
questao(2) :-
	write('esse é o enunciado da questão 2!').



/*===============================================================================================================================*/
	
checa_resposta(N, X) :-
	(	resposta(N, X) -> write('Você acertou!!')
		; write('você errou!')
	).
	
	


perguntas :-
	pergunta(1),
	pergunta(2).




pergunta(1) :-
	nl,
	questao(1), /*chama o enunciado da pergunta 1*/
	nl,
	
	
	repeat,
	read(X),	/*lê a resposta do usuário*/
	nl,
	write('resposta dada: '),
	write(X), /*teste pra ver se o valor lido foi de fato atribuído a X*/
	nl,
	resposta(1, X). /*verifica no banco de dados se a resposta está correta*/
	
pergunta(2) :-
	nl,
	questao(2),
	nl,
	
	repeat,
	read(X),
	checa_resposta(2, X),
	resposta(2, X).
	
	
	

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
	
	write('REGRAS ===================================='),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('==========================================='),
	
	nl,
	nl.

introducao(Nome) :-
	write('A história será escrita neste espaço, pt1., '),
	write(Nome),
	nl,
	classes(Classe),
	nl,
	write('parte 2 da história aqui').

iniciar :-
	write('nome do programa aqui'),
	nl,
	dados_jogador(Nome),
	regras,
	introducao(Nome),
	perguntas.
	
