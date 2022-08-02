/*PROJETO DE RPG PARA O ENSINO DE MATEMÁTICA*/




/*DADOS DO JOGADOR*/
dados_jogador(Nome, Idade) :-
	write('Qual é seu nome? '),
	read(Nome),
	write('Qual a sua idade? '),
	read(Idade).



/*INÍCIO DE JOGO*/
iniciar :-
    write('Seja bem vindo(a) ao RPG Matemático Sem Nome,'),
    nl(),
	dados_jogador(Nome, Idade),
    regras, /*chamada da "função" regras*/
	write('Agradecemos o uso de nosso sistema, '),
	write(Nome),
	free(Nome),
	read(Nome),
	write(Nome).
	


/*REGRAS DO JOGO*/
regras :-
	nl,
	nl,
	write('REGRAS DO JOGO -- LEIA ATENTAMENTE =================='),
	
	
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
	write('regra'),
	nl,
	write('regra'),
	nl,
	write('regra'),
	nl,

	write('====================================================='),
	nl,
	nl,
	
	
	write('Você está pronto para iniciar? (y/n) '),
	checa.
	
/*PERGUNTAS DO JOGO*/
checa :-
	repeat,
	read(Resp),
	\+ Resp\=y.