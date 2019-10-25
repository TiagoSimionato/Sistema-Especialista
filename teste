pessoa(socrates).
pessoa(platao).
cachorro(bisteca).
gato(fiona).


pessoa(X) :- mortal(X).
animal(X) :- cachorro(X).


%Aritmetica
X is 1+


%Adicionar na lista
adicionar(X,Y,[X|Y]).


%Veriificar se há um elemento na lista 
pertence(X,[X|_]).
pertence(X,[_|Y]) :- pertence(X,Y). %chamada recursiva


%Fatorial
fatorial(0,1).
fatorial(N,Resultado) :-
	N>0,
	N1 is N-1,
	fatorial(N1,Result),
	F is N1*Result.
	
	
	
