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

resposta(1, 8).
resposta(2, 30).
resposta(3, '3 2145 807159 279').
resposta(4, '510 -6 1362  202').
resposta(5, '343 27 8 125').
resposta(6, 303).
resposta(7, 50).
resposta(8, 2).
resposta(9, '11 11 14 14 14 14 14 14 22 22 22 23 23 23 23 23 23 31 34 34 34').





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
	write('Você nota que, quanto mais aumenta o tamanho do cano, maior é a força na ponta do cano que bate contra o vidro.'),
	nl.
	
dica(101) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você sente uma forte dor na cabeça. Com ela vem uma lembrança confusa: três--regra--três'),
    nl.
	
dica(2) :-
	nl,
	write('Considere a gravidade g = 9.8m/s^2. Você está entre dois alvos, então, como eles têm uma distância de 8 metros entre si, você está a 4 metros de cada um. Energia.'),
	nl.
	
dica(102) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você recebe um lampejo de ideias, lembrando-se da existência da energia potencial gravitacional e da energia cinética, 
			e que a energia mecânica final é igual a inicial em uma situação controlada como a daquela sala.'),
    nl.

dica(3) :-
	nl,
	write('Uma exponencial pode ser calculada da seguinte maneira: 2^x, se x = 3, então 2^x = 2*2*2. 
			Isto é, um número elevado a um expoente x corresponde a este mesmo número multiplicado por ele mesmo x vezes.'),
	nl.

dica(103) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você olha a função e se pergunta qual seria o resultado da substituição dos novos números em f(x).'),
    nl.
	
dica(4) :-
	nl,
	write('Parece um polinômio simples! Você tem a ideia de substituir o primeiro valor novo dado em X.'),
	nl.

dica(104) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você olha a função e se pergunta qual seria o resultado da substituição dos novos números em f(x), um por vez.'),
    nl.
	
dica(5) :-
	nl,
	write('Você se lembra que o log de um produto corresponde à soma dos logs: log(a*b) = log a + log b. 
			Além disso, percebe que há uma escritura no chão em que log2 (1) = 0; log2 (2) = 1 ; log2 (3) = 1,58; 
			log2 (4) = 2; log2 (5) = 2,32; log2 (6) = 2,58; log2 (7) = 2,80; log2 (8) = 3; log2 (9) = 3,1.'),
	nl.

dica(105) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você olha a função e se pergunta qual seria o resultado da substituição dos novos números em f(x).'),
    nl.
	
dica(6) :-
	nl,
	write('Parece que todas as incógnitas giram em torno da temperatura dada. Como chegar a R? Talvez seria interessante começar por uma conversão...'),
	nl.

dica(106) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Aqueles graus. Se fosse uma abertura, quantas voltas inteiras poderíamos dar?!'),
    nl.

dica(7) :-
	nl,
	write('Você fica agitado e, com isso, lembra-se das aulas de conservação de energia mecânica. 
			De um lado, energia cinética, de outro, o trabalho da força de atrito.  Combinadas com a Segunda Lei de Newton, 
			uma ferramenta poderosa você terá em mãos. 
			Como ambas se relacionam? E como isso provê a força que deve ser feita no cubo?!'),
	nl.

dica(107) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): O cubo tem uma velocidade inicial Vi. 
			Lembre-se que, com ela, é possível encontrar a aceleração uniforme do cubo, 
			já que a aceleração é dada pelo quociente de velocidade e tempo.'),
    nl.
	
dica(8) :-
	nl,
	write('Volume... você nota novamente a simetria entre os lados do cubo. As palavras "três" e "regra" vêm a sua mente.'),
	nl.

dica(108) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Você nota que consegue calcular o volume do cubo multiplicando sua altura pela largura e profundidade. Resta agora verificar a relação entre as outras informações.'),
    nl.

dica(9) :-
	nl,
	write('Os números... Aqueles números. Parecem matrizes... Seria uma boa ideia multiplicá-las? Você se lembra que numa matriz 4x4, as posições são dadas da seguinte forma:'),
	nl,
	write('[11 12 13 14]'),
	nl,
	write('[21 22 23 24]'),
	nl,
	write('[31 32 33 34]'),
	nl,
	write('[41 42 43 44]'),
	nl.

dica(109) :-
    nl,
    write('(DICA EXTRA - BÔNUS DE CLASSE): Os números resultantes naquela matriz quadrada, será que indicam algo? talvez deva tentar jogar um certo números de facas naqueles locais...'),
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
*
* 	Se o nº do tipo de perda de vida for maior que 50, temos
*	as chamadas "perdas específicas", que ocorrem quando essa
*	perda só pode ocorrer em um tipo de sala específica.
**************************************************************/

perde(1) :-
	nl,
    write('Subitamente surgem várias lacunas nas paredes e delas aparecem incontáveis armas de fogo, dos mais variados tipos. 
			Sem perder tempo você corre para encontrar a resposta que procura.'), 
	nl, nl.
	
perde(101) :-
	nl,
	write('Cada arma presente na câmara se volta para você. Dezenas de lasers brilham em seu corpor. Você começa a suar frio.'), 
	nl.

perde(201) :-
	nl,
	write('Tarde demais. As armas começaram a disparar e não há como reagir.'), 
	nl, nl.


perde(2) :-
	nl,
    write('Uma grande tela surge na câmara. Nela há um desenho de uma bomba e uma contagem regressiva. É melhor se apressar.'), 
	nl, nl.
	
perde(102) :-
	nl,
	write('A contagem está rapidamente chegando a zero. É agora ou nunca!'), 
	nl, nl.

perde(202) :-
	nl,
	write('Já era. A contagem alcança zero e por uma fração de segundo ouve-se o início de um barulho violento, 
			mas rapidamente tudo se apaga. É o fim.'), 
	nl, nl.
	
	
perde(3) :-
	nl,
    write('Fortes passos são dados do lado de fora da sala. Algo ou alguém se aproxima.'), 
	nl, nl.
	
perde(103) :-
	nl,
	write('Você percebe que os passos pararam. Ao olhar para janela, nota que ali repousa um imenso sujeito; 
			seu rosto é escuro devido a má iluminação, mas não parece nada amigável.'), 
	nl, nl.

perde(203) :-
	nl,
	write('Coberto por um terno preto, o esguio homem com uma força sobrehumana quebra o vidro da parede. 
			Aproxima-se com passos cada vez mais fortes. Sem tempo de reação, o rosto ausente de vida repousa agora abaixo de você, 
			e suas gélidas mãos te levantam pelo pescoço.'), 
	nl, nl.


perde(4) :-
	nl,
    write('Você nota um barulho sobre sua cabeça. Pequenos orifícios surgem pelo teto.'), 
	nl, nl.

perde(104) :-
	nl,
    write('Dos orifícios saíram longas lâminas, que agora refletem toda luz do ambiente. 
			O teto começara e se mover lentamente em direção ao chão.'), 
	nl, nl.
	
perde(204) :-
	nl,
    write('Não é mais possível escapar. A sala começa a vibrar e as lâminas se aproximam mais rápido. 
			Você sente pequenas perfurações e, logo em seguida, não enxerga mais nada.'), 
	nl, nl.
	
	
	
perde(5) :-
	nl,
    write('As luzes começam a piscar e você sente fortes dores de cabeça. Ao olhar pelo vidro da sala, 
			nota que no teto do corredor repousa um homem. Seria aquilo uma alucinação?'), 
	nl, nl.
	
perde(105) :-
	nl,
    write('Desafiando a gravidade, os pés do homem continuam fixos no teto. 
			Ele olha diretamente em seus olhos através de sua máscara de prata, 
			e é possível notar que uma lágrima negra escorre de seus olhos.'), 
	nl, nl.
	
perde(205) :-
	nl,
    write('O misterioso sujeito levara seu dedo indicador ao que remetia uma boca em sua máscara, 
			fazendo um sinal de silêncio. Logo em seguida, com o mesmo dedo, apontara em direção ao fundo da sala, 
			logo atrás de você. E de lá, uma grande criatura desprovida de face avança sedenta por sangue.'), 
	nl, nl.
	
	
perde(6) :-
	nl,
    write('O teto se move, abrindo um grande buraco. Dele, um cubo é jogado no chão. Logo em seguida, 
			o teto volta a ser o que era. Seu pânico para encontrar uma resposta não o deixa mexer no cubo.'), 
	nl, nl.
	
perde(106) :-
	nl,
    write('O lado direito do cubo retrai, revelando pequenas frestas que, logo em seguida, 
			liberam um curioso gás azul. O lado esquerdo do cubo começa a piscar. Ainda há tempo de escapar!'), 
	nl, nl.
	
perde(206) :-
	nl,
    write('O gás azul agora está em toda sala. O lado piscante do cubo começa a abrir, liberando um gás vermelho. 
			A união dos gases gera uma forte reação que consome todo oxigênio presente no local. Não há mais como respirar.'), 
	nl, nl.
	
perde(7) :-
	nl,
    write('"Ei, você!", alguém grita. Olhando em todas as direções, você não consegue identificar a origem da estranha
			voz. O suor frio é iminente.'), 
	nl, nl.
	
perde(107) :-
	nl,
    write('"Ei, você aí!", alguém grita novamente. Agora, porém, em alto e claro tom.'), 
	nl, nl.
	
perde(207) :-
	nl,
    write('Às suas costas, o som novamente ecoa. Um súbito frio percorre sua espinha. Ao virar-se, uma estranha figura é refletida
			em seus olhos. Sem tempo de reagir, o estranho ser o atinge com uma arma rápida demais para ser identificada. E então,
			todas as cores começam a adquirir um tom escarlate.'), 
	nl, nl.
	
	
perde(50) :-
	/*resposta específica para sala do calor*/
	nl,
    write('Sua mente começa a fraquejar. Sua cabeça lateja. Seu tempo de resistência ao calor está se esgotando, é melhor descobrir a resposta logo.'), 
	nl, nl.
	
perde(150) :-
	nl,
    write('É como se você estivesse em chamas. Já está difícil continuar a manter a consciência, 
			mas em um último ímpeto de força você tenta novamente dar uma resposta.'), 
	nl, nl.
	
perde(250) :-
	nl,
    write('Mas nāo funciona. Aos poucos sua conexão mental com esse mundo se esvai enquanto seu corpo atinge o ponto de fusão e começa a derreter.'), 
	nl, nl.
	
	
perde(51) :-
	/*resposta específica robôs*/
	nl,
    write('Nāo! Todos os robôs correm furiosamente em sua direção. Rápido! Dê a sua resposta!'), 
	nl, nl.
	
perde(151) :-
	nl,
    write('Alguns robôs já te alcançaram e te dão pancadas incansavelmente. Enquanto se esquiva e se protege, 
			você realiza mais um esforço de encontrar uma solução.'), 
	nl, nl.
	
perde(251) :-
	nl,
    write('O esforço é em vão. Os pequenos autômatos raivosos se amontoam sobre você e 
			te agridem até que não seja mais possível reconhecer o que estavam atacando.'), 
	nl, nl.
	
	
perde(52) :-
	/*resposta específica robô final*/
	nl,
    write('Não é assim! O Guardião é lento mas começa a juntar os braços a prepar um canhão de laser enorme. 
			Ele precisa ser destruído rapido!'), 
	nl, nl.
	
perde(152) :-
	nl,
    write('O canhão está quase pronto, a arma já está sendo aquecida para o disparo fatal. 
			O cano dela tem o mesmo tamanho que o Mega Autômato, apresentando potência o suficiente pra desintegrar 
			essa sala inteira e todo o caminho percorrido na Central de Pesquisa que ficou para trás. É sua última chance!'), 
	nl, nl.
	
perde(252) :-
	nl,
    write('O laser está completamente carregado. É o fim. A arma é disparada com tamanha violência que você 
			nem vê o raio de energia te atingindo. A Central Subterrânea foi apagada da existência. 
			As paredes desmoronam e tudo é engolido pela terra.'), 
	nl, nl.






/***************************************************************
*	ENUNCIADOS (PERGUNTAS)
*
*	Textos que contém as perguntas que serão feitas ao jogador.
*	Seguem a seguinte estrutura:
*
*	"enunciado(número da pergunta)".
***************************************************************/

enunciado(1) :-
	write('Subitamente um barulho de engranagens rangendo desperta e uma porta de metal se fecha bloqueando a entrada. 
			Uma parede de vidro desce impedindo o acesso ao corredor adiante. 
			Um vidro como aquele resiste a um choque mecânico de até 240 Newtons. 
			O cano agora em suas mãos apresenta a propriedade de ser esticado ou contraído. 
			Considerando que, ao dar uma pancada no vidro, o cano gira em torno do eixo de sua mão, 
			potencializando sua força proporcionalmente ao comprimento do cano, com quantos metros (pelo menos) 
			você deve deixar o cano para que o vidro se rompa, se o seu máximo de força no momento é 30 Newtons?'),
	nl.
	
enunciado(2) :-
	write('Quando você alcança o meio da sala um som agudo é disparado e um mecanismo que se assemelha a uma garra 
			sai das paredes de cada um de seus lados e prende seus pés. Ao olhar atentamente você observa a 
			presença de um componente brilhante com vários fios conectados na base de cada uma das garras, 
			que se encontram no chão. Parece um componente importante! Por sorte, haviam algumas bugigangas 
			em seu bolso que podem servir para serem arremessadas. Você então estima que a sala branca tem 
			aproximadamente 8 metros de largura, sabe que as quinquilharias têm 200 gramas cada e que a sua altura é de 1 metro. 
			Com que força (em Newtons) você deve arremesar a peça para desativar cada uma das garras e se libertar? 
			(despreze os efeitos de resistência do ar e considere que força será aplicada por 0,059036 segundos e será uniforme durante esse tempo)'),
	nl.

enunciado(3) :-
    write('Os caracteres escritos no painel subitamente desaparecem enquanto são substituídos 
			por outros novos: "f(x)= 7^x - 2^(2*x)" e os números "1 4 7 3". 
			Em quais blocos você pisa? (digite sua resposta entre aspas simples e com espaço entre os números em sequência)'),
	nl.
	
enunciado(4) :-
    write('Os caracteres escritos no painel subitamente desaparecem enquanto são substituídos 
			por outros novos: "f(x)= x³ - 5*x² + 10" e os números "10 4 13 8". 
			Em quais blocos você pisa? (digite sua resposta entre aspas simples e com espaço entre os números em sequência)'),
	nl.

enunciado(5) :-
    write('Os caracteres escritos no painel subitamente desaparecem enquanto são substituídos 
			por outros novos: "f(x)= [log2(2*x)]³" e os números "64 4 2 16". 
			Em quais blocos você pisa? (digite sua resposta entre aspas simples e com espaço entre os números em sequência, lembre-se que são números inteiros)'),
	nl.
	
enunciado(6) :-
    write('Você percebe um pequeno painel digital próximo à porta trancada da saída. 
			Ele parece estar aguardando a entrada de dados enquanto exibe o texto: 
			"cos(V) + R + 4,801*T = 3*C + 7". O que você escreve nele?'),
	nl.

enunciado(7) :-
    write('Ao chegar perto do cubo dois buracos abrem no piso ao seu lado e garras prendem seus pés antes de você conseguir se desviar. 
			Um clique ressoa do outro lado da sala. Surgiu um desnível do outro lado da sala exatamente com o comprimento do cubo. 
			O cubo precisa ser colocado lá! Mas com cuidado, pois logo em seguida outro botão aparece com uma bomba desenhada, 
			sugerindo uma grande destruição caso ativada. Há uma inscrição no cubo pequena e mal feita: 
			"coeficiente de atrito= 1/14". Seus sentidos aguçados lhe dão a estimativa que o cubo tenha massa 10 kg, 
			o dispositivo surgiu a 35 metros de distância e apesar de sua memória enevoada você lembra que alguém te 
			ensinou que o campo gravitacional da Terra gera uma aceleração de 9,8 m/s² na superfície. 
			Com que força (em newtons) você soca o cubo em direção ao buraco? 
			Despreze a resistência do ar e considere que a força será aplicada por 1,4 segundos com intensidade uniforme.'),
	nl.

enunciado(8) :-
    write('No meio de sua caminhada sirenes irrompem de repente, e muitos robôs-guardas despencam do teto. 
			Durante a loucura, o cubo de granito se abre e uma mangueira é arremessada em sua direção. 
			Há água dentro do cubo! Porém, uma quantidade limitada. 
			Você deve jogar o máximo de água possível em cada vigilante mecânico para garantir que todos deixem de funcionar. 
			Seus instintos lhe dizem que a largura do cubo é de aproximadamente 3 metros, seus olhos conseguem contar um total de 20 robôs 
			e a mangueira em suas mãos tem uma vazão de 675 L/s, quantos segundos você aponta a mangueira para cada robô?'),
	nl.

enunciado(9) :-
    write('Enquanto você está passando pelo corredor, observa duas matrizes rabiscadas na parede com giz preto. 
			Elas estão um pouco apagadas, mas podem ser lidas:'),
	nl,
	write('[0 2]'),
	nl,
	write('[3 0]'),
	nl,
	write('[0 1]'),
	nl,
	write('[0 0]'),
	nl, nl,
	write('[0 1 2 0]'),
	nl,
	write('[1 0 0 3]'),
	nl,nl,
	write('Embaixo delas, um traço corrido passa a impressão que uma mensagem começou a ser escrita com pressa, 
			porém nunca pôde ser terminada.'),
	nl,
	write('Ao chegar na próxima sala, você sente um tremor que parece vir de algum lugar próximo. 
			Um alarme ensurdecedor ecoa e o teto começa a se abrir. É então que um robô enorme surge da abertura no teto e cai no chão. 
			É um guarda! Apesar de seu tamanho ele apresenta ferrugem e rachaduras em inúmeras partes de seu corpo, limitando seus movimentos. 
			Contudo, o protetor do laboratório apresenta tantos armamentos acoplados em seu corpo que é perigoso se aproximar. 
			Por sorte, o impacto dele no chão fez com que algumas facas que estavam encravadas na parede caíssem no chão. Você corre para pegá-las. 
			Há 21 facas no total, e elas podem servir para serem arremessadas nas regiões mais fracas e comprometidas do super androide. 
			Por fim, nota-se que ele parece apresentar 16 regiões específicas em seu corpo dispostas horizontal e verticalmente em um quadrado. 
			Se a cada região é possível atribuir um índice vertical e horizontal contados a partir do 1 de cima e da esquerda, em quais Regiões você atira as facas?
			(Digite os índices entre aspas simples, em ordem crescente, linha por linha. Caso haja algum índice em que desejar atirar mais de uma faca digite o índice duas vezes espaçados igualmente dos demais)'),
	nl.






/***************************************************************
*	EVENTOS
*
*	Textos que ocorrem após dada uma resposta certa ou entre salas. 
*	Possuem a seguinte estrutura:
*
*	"evento(nº da questão)".
*	
*	Nem todas as questões possuem um evento, isto é, existem 
*	perguntas seguidas sem intermédio de texto entre elas.
***************************************************************/

evento(1) :-
	nl,
	write('Exatamente! o vidro se estilhaça e o caminho agora está livre. 
			Infelizmente a barra não resistiu ao impacto e se rompeu junto com o vidro, tornando-se inútil. 
			Entretanto, agora você pode caminhar serenamente em direção à próxima sala.'),
	nl, nl.

evento(2) :-
	nl,
	write('Muito Bem! Ao ser atingida em seu núcleo exposto, a base de cada garra detona 
			fracamente e seus pés agora estão soltos, livres para serem seguirem para a próxima sala.'),
	nl, nl.

evento(3) :-
	nl,
	write('Na mosca! Todos os blocos no chão e o painel na parede rapidamente giram 180 graus, 
			desaparecendo as únicas partes da sala que continham algo além de uma cor branca profunda. 
			A porta ao fundo se abre e o caminho agora está livre.'),
	nl, nl.
	
evento(4) :-
	nl,
	write('Ao chegar na próxima sala, a porta logo atrás se fecha com um estrondo enquanto você se encontra 
			em um salão com um tom laranja e um calor insuportável, que te dá naúseas assim que seu primeiro passo na sala é dado. 
			Você percebe que não vai sobreviver neste lugar por muito tempo. É preciso descobrir como sair rápido! 
			O objeto mais peculiar do salão é um círculo místico e perfeito, que gira no ar a uma velocidade constante no 
			centro do recinto, mas além dele  há um painel na parede esquerda, onde é possível ler: "212ºF". 
			Do outro lado da sala, letras metálicas escrevem na parede: 
			"Aqui sua mente dá voltas inteiras em torno da loucura. 
			Enquanto isso, suas mãos já tangenciam as respostas de suas perguntas. 
			Converta as incógnitas ocultas em cada período e seu caminho se abrirá."'),
	nl, nl.
	
evento(5) :-
	nl,
	write('Perfeito! A temperatura da sala começa a despencar enquanto suas funções corporais voltam ao normal. 
			A saída agora está aberta e você caminha em direção ao seu próximo desafio.'),
	nl, nl.
	
evento(6) :-
	nl,
	write('Precisamente! O cubo desliza furiosamente os 35 metros e por um triz chega ao seu destino. 
			As garras te libertam, a saída se desbloqueia e é hora de seguir adiante.'),
	nl, nl.
	
evento(7) :-
	nl,
	write('Ótimo! Enquanto você pula e desvia de ataques imprudentes, Autômatos desabam no chão de 2 em 2 
			segundos até que você é o último ser em pé. Hora de seguir a jornada.'),
	nl, nl.
	
evento(8) :-
	nl,
	write('Fantástico! Suas mãos são milagrosamente rápidas arremessando facas furiosamente nas falhas 
			expostas do robô com assustadora precisão, como em uma cena cinematográfica de algum filme 
			de um lugar há muito tempo chamado de Hollywood. A criatura mecânica cai de joelhos antes de 
			explodir em todas as cores do arco-íris. Um verdadeiro espetáculo.'),
	nl, nl.
	
evento(9) :-
	nl,
	write('A porta que estava guardada apresenta diversos ornamentos, uma cor dourada reluzente e o dobro do tamanho das anteriores. 
			Seria um indicativo de que o último obstáculo foi superado? Está o tesouro logo adiante esperando para ser conquistado? 
			Almejando responder essas questões que invadem sua cabeça, você avança. 
			Passa por um longo corredor escuro e silenciosamente inquietante até chegar em uma parede com um único painel.'),
	nl, nl.



/***************************************************************
*	CAMINHOS
*
*	Textos que dão ao jogador uma opção de caminho, esta que será
*	captada pela função/regra "acontecimentos". Possuem a seguinte
*	estrutura:
*
*	"caminho(nº do caminho, resposta do jogador)".
***************************************************************/

caminho(1, EV1) :-
	write('Ao final da escada você se depara com uma sala completamente branca e bem iluminada, mas um pouco menor do que esperaria de um grande laboratório.'),
	nl,
	write('O lugar parece limpo e não há nada lá além de um cano de metal no canto esquerdo da sala, e de uma porta do outro lado que dá acesso às áreas mais profundas do laboratório.'),
	nl,
	write('O que você faz? ( 1. Checar o cano; 2. Ignorar o cano): '),
	read(EV1).


caminho(2, EV2) :-
	write('Depois de cruzar um longo corredor escuro, você chega na próxima câmara. 
			Ela parece bastante com a primeira, mas dessa vez há um painel digital e 
			vários blocos no chão com números que não parecem fazer muito sentido, 
			além da porta bloqueada no fim do ambiente. Nos blocos você encontra os números 
			"3 -6 125 2145 27 343 202 1362 807159 279 510 8", além disso os 
			blocos apresentam uma pequena elevação, como se tivessem sido feitos para serem pisados.'),
	nl,
	write('Ao olhar para o painel, você encontra três opções esperando para serem escolhidas: (1. Exponencial; 2. Polinomial; 3. Logarítmica)'),
	nl,
	write('Qual você escolhe? '),
	read(EV2).
	
caminho(3, EV3) :-
	write('Ao final do corredor há mais um sala cheia de azulejos brancos intermináveis. 
			O único objeto existente dentro dela é um grande cubo preto feito de granito.'),
	nl,
	write('O que você faz? (1. Se aproxima do cubo; 2. Contorna ele em direção à saída) '),
	read(EV3).


	
/***************************************************************
*	ESCOLHAS
*
*	Textos que dão ao jogador uma opção de escolha, esta que será
*	captada pela função/regra "acontecimentos". Contribui para decidir
*	qual será o fim de jogo do jogador. Possuem a seguinte estrutura:
*
*	"escolha(nº da escolha, resposta do jogador)".
***************************************************************/

escolha(1, E1, Classe) :-
	write('Enquanto anda por um corredor escuro, um som de metal ressoa do fim da passagem. 
			Subitamente, as paredes começam a se remodelar e em um piscar de olhos você se encontra em um labiritinto mal iluminado. 
			Rangendo com leve escândalo e brilhando fracamente como um vagalume no céu noturno, um robô surge em uma passagem próxima.'),
	nl,
	write('Ele ainda não notou sua presença. O que você faz?'),
	nl, nl,
	write('1. Fugir: neste momento não há tempo nem energia para serem gastos com lutas desnecessárias.'),
	nl,
	write('2. Esgueirar-se pelas sombras: afinal, é uma boa estrátegia seguir a máquina sem que sua presença 
			seja notada para se descobrir mais informações a respeito do laboratório.'),
	nl,
	
	(
		(Classe = 'cientista'; Classe = 'Cientista') -> write('3. Atacar o robô: tudo dentro deste lugar é considerado inimigo. 
																Deixá-lo escapar agora significa correr o risco de sofrer algum 
																mal ocasionado por esta máquina no futuro.');
		write('')
	),
	nl,
	read(E1),
	nl.
	
escolha(2, E2, Classe) :-
	write('Durante sua travessia para o próximo nível, um portão metálico bloqueia seu caminho em um rangido repentino. 
			Uma luz branca e tênue se acende na sua esquerda, revelando retratos com suas respectivas descrições logo abaixo. 
			Outra luz idêntica surge na sua direita e revela a mensagem: "Para seguir seu caminho uma escolha deve ser feita. 
			Se desejas pelo que há no final, uma pintura deve ser adorada. Dados devem ser colatados como parte do procedimento do laboratório".'),
	nl,
	write('Os retratos são esses:'),
	nl, nl,
	write('1. "Isaac Newton". Lei da gravitação universal e as três leis de Newton. Corpos que têm massa sofrem uma força atração entre si. 
			Se não há força em um corpo, não há aceleração e, portanto, o movimento deste não se altera. 
			Toda força aplicada em um corpo gera uma aceleração, caso este não receba forças de mesma intensidade em sentido contrário. 
			Toda força com ação em um corpo tem um par de reação.'),
	nl,
	write('2. "Charles Darwin". Seleção Natural. Apenas os seres vivos devidamente adaptados sobrevivem às pressões seletivas do ambiente no qual estão inseridos.'),
	nl,
	
	(
		(Classe = 'cientista'; Classe = 'Cientista') -> write('3. "René Descartes". Penso, logo existo. Se meus sentidos me enganam, 
																	se nada do que conheço é verdade, se de tudo duvido, 
																	então estou no mínimo pensando para duvidar, 
																	portanto sei que minha existência é verdadeira. 
																	E essa é minha única certeza.');
		write('')
	),
	nl,
	write('Qual você escolhe?'),
	nl,
	read(E2),
	nl.

escolha(4, E4, Classe) :-
	write('Enquanto passa por um saguão com várias salas que pareciam ser escritórios abandonados, 
			você nota que através de uma janela, na verdade, existem pessoas trabalhando com jalecos como se fosse um dia qualquer.'),
	nl,
	write('Ora, mas o laboratório  está abandonado. O que você faz?'),
	nl, nl,
	write('1. Ignorar. existem outros assuntos mais importantes para serem resolvidos no momento.'),
	nl,
	write('2. Dar leves toques no vidro, chamando as pessoas do lado de dentro.'),
	nl,
	
	(
		(Classe = 'cientista'; Classe = 'Cientista') -> write('3. Entrar na sala para questionar os cientistas. 
																Por algum motivo não há porta, portanto, 
																o único caminho seria destruir a janela.');
		write('')
	),
	nl,
	read(E4),
	nl.



/***************************************************************
*	CONSEQUÊNCIAS
*
*	Textos que dão as consequências baseadas nas decisões do jogador.
*	Trabalha em conjunto com a função/regra "escolha".
*	Possuem a seguinte estrutura:
*
*	"consequencia(nº da escolha, resposta do jogador)".
***************************************************************/
consequencia(1, E1) :-
	E1 = 1 -> (write('Você pega o caminho mais distante daquele amontodado de peças que consegue encontrar. 
						Correndo e virando esquinas implacavelmente você foge até se cansar. 
						Enquanto faz uma pausa para recuperar o folêgo, as paredes voltam a se remodelar, 
						te colocando outra vez no corredor linear no qual você se encontrara inicialmente. 
						Sem entender direito, não lhe resta escolha senão seguir seu caminho.'));
						
	E1 = 2 -> (write('Você caminha pelas sombras seguindo o androide desfigurado. 
						Ele não é muito rápido, o que torna a tarefa monótona, 
						mas sua presença é sempre mantida em segredo. 
						Eventualmente a sucata ambulante te leva para a saída do labirinto, 
						onde desaparece em um raio forte de luz. É uma cena esquisita, 
						mas agora é possível continuar seguindo seu caminho.'));
	
	E1 = 3 -> (write('Você agarra uma barra de metal próxima e corre impetuosamente em direção ao monte de sucata ambulante. 
						Ao golpeá-lo com toda sua força, a barra passa direto pela criatura mecânica, 
						sem que nenhuma resistência seja encontrada no caminho. Você não contava com isso, por isso perde o equilíbrio e cai no chão. 
						O brilho tímido agora se tornou um clarão ofuscante. 
						Quando sua visão é retomada o robô já desaparecera e você está novamente no corredor que se encontrava inicialmente. 
						"O que foi isso?", pergunta a si mesmo enquanto levanta e continua a seguir seu caminho.')),
	
	nl.
	
consequencia(2, E2) :-
	E2 = 1 -> (write('Você aperta um botão cor de vinho embaixo da imagem de Isaac Newton. 
						Um brilho verde e tímido pode ser observado no meio do portão e ele se abre. 
						Agora é possivel continuar andando.'));
						
	E2 = 2 -> (write('Você aperta um botão cor de vinho embaixo da imagem de Charles Darwin. 
						Um brilho verde e tímido pode ser observado no meio do portão e ele se abre. 
						Agora é possivel continuar andando.'));
	
	E2 = 3 -> (write('Você aperta um botão cor de vinho embaixo da imagem de René Descartes. 
						Um brilho verde e tímido pode ser observado no meio do portão e ele se abre. 
						Agora é possivel continuar andando.')),
	
	nl.
	
consequencia(4, E4) :-
	E4 = 1 -> (write('Você finge que não viu nada e continua seu caminho pela passagem.'));
						
	E4 = 2 -> (write('Ao chamá-los, os cientistas notam sua presença. Desesperados, começam a correr 
						de um lado para o outro até que um portão de aço despenca do teto, bloqueando a janela. 
						O impacto te arremesa para trás. "O que foi isso?". Intrigado, você se levanta e segue seu caminho pela passagem.'));
	
	E4 = 3 -> (write('Você usa um conjunto de peças que encontrou ao longo do caminho para 
						montar uma arma laser e disparar contra a janela. Infelizmente o agregado 
						de peças improvisadas resistiu apenas a um disparo e está completamente derretido agora. 
						Mas o interessante é que, ao olhar para onde estava a janela, só é possível observar tijolos cinzas. 
						Nunca houve nada atrás da parede. Suspicaz, você lentamente se vira, formulando hipóteses para o que poderia ter acontecido, 
						e continua seu caminho pela passagem.')),
	
	nl.

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

/*
* Final Insuficiente: O jogador não consegue terminar o jogo	
*/
final(0) :-
	nl,
	write('É uma pena. As provações do laboratório se mostraram muito rigorosas. 
			Agora, os mistérios que espreitavam suas profundezas jamais serão descobertos.'),
	nl.
	
/*
* Final 1 (Ruim): O jogador não consegue o tesouro	
*/
final(1) :-
	nl,
	write('A porta se abre. Lá está ele. O precioso livro. 
			Repousando em uma estante trabalhada com muitos detalhes, como se fosse um pequeno santuário. 
			Em um lampejo de emoção, você corre para pegá-lo, 
			mas ao pisar em uma placa de pressão, uma armadilha é ativada e uma enorme mão mecânica martela seu corpo. 
			Suas pernas não respondem muito bem, estão completamente presas. 
			Apesar disso, você está bem. Armas com canos de um metro e meio e tanques de combústivel acoplados descem do teto. 
			Você se prepara para seu último suspiro, mas elas se viram para o livro! São Lança-chamas! 
			Em um vislumbre de desespero as chamas são ativadas e o livro é incinerado, e junto ao altar, tudo vira cinzas diante de seus olhos. 
			Tão perto. Agora o último fragmento de conhecimento acerca dos motores mais sofisticados que esse 
			mundo já viu estão perdidos para sempre no esquecimento.'),
	nl.

/*
* Final 2 (Bom): O jogador consegue o tesouro
*/
final(2) :-
	nl,
	write('A porta se abre. Lá está ele. O precioso livro. Repousando em uma estante trabalhada com muito detalhe, 
			como se fosse um pequeno santuário. Em um lampejo de emoção, você corre para pegá-lo. 
			Todo o esforço investido foi recompensado. Agora, com o livro em mãos você o folheia anciosamente. 
			Relatos de experimentos e revelações teóricas se mostram diante de seus olhos, porém, ao chegar ao final, 
			algumas páginas soltas caem no chão. Uma mensagem manuscrita com tinta preta, que não parece fazer parte da obra original. 
			Quando será que alguém colocou algo assim ali?'),
	nl, nl,
	write('"Para aquele que conquistar o conhecimento", diz o título.'),
	nl,nl,
	write('Ao passar os olhos pelas palavras você descobre que são instruções revelando a existência de 
			uma sociedade exilada do resto do mundo e o que deve ser feito para que sua cidade seja acessada. 
			Um lugar que preservou as descobertas adquiridas previamente pela ciência e vive em harmonia. 
			Sem tempo para descansar, sua cabeça se ergue ao encarar sua próxima aventura.'),
	nl.

/*
* Final 3 (Verdadeiro): O jogador descobre o simulacro (apenas o cientista tem acesso a este final)	
*/	
final(3, Nome) :-
	nl,
	write('A porta se abre. Lá está ele. O precioso livro. Repousando em uma estante trabalhada com muito detalhe, 
			como se fosse um pequeno santuário. Em um lampejo de emoção, você corre para pegá-lo. 
			Mas após alguns passos, algo esquisito acontece. As coisas ao seu redor começam a se distorcer ao 
			passo que emitem uma espécie de ruído branco. O santuário e sua percepção de espaço se tornam cada 
			vez mais disformes conforme o efeito vai se intensificando, até que tudo desaparece. 
			Não há mais nada agora, nem livros, nem portas, nem paredes. Apenas o ambiente branco infito e contínuo. 
			Subitamente, um retângulo com dimensões um pouco maior que as dimensões de um ser humano se abre e uma pessoa 
			vestida em um jaleco branco sai de lá. Pede para que você a acompanhe para fora, através do retângulo. 
			Enquanto caminham, ela explica ser o cientista encarregado da operação.'),
	nl, nl,
	write('"O quê?"'),
	nl,nl,
	write('Enquanto caminham através de salas lotadas de enormes computadores, 
			ele lhe explica o quão grande fora sua contribuição para as pesquisas lá realizadas. '),
	nl,nl,
	write('"Seu desempenho foi extremamente interessante", afirmou assertivamente.'),
	nl,nl,
	write('Com os computadores agora para trás, vocês andam em meio a vários pesquisadores 
			vestidos em jalecos brancos, imersos em suas vidas rotineiras 
			-- esta cena lhe pinica a memória como um déjà-vu.'),
	nl, nl,
	write('"Infelizmente houveram alguns problemas na execução do programa, necessitando a desativação dos parâmetros de realizade aumentada"'),
	nl,nl,
	write('Uma figura pequena e atrapalhada se aproxima, perfeitamente uniformizada, a não ser por seu óculos grandes e redondos.'),
	nl,nl,
	write('"Chefe, com os dados coletados conseguimos corrigir o bug que gerava imagens intáteis".'),
	nl,nl,
	write('Durante um sinal de confirmação, seu guia lhe acompanha para um pequeno cômodo.'),
	nl,nl,
	write('"Somos gratos pela ajuda que nos proporcinou, '),
	write(Nome),
	write('. Com isso, a divisão de pesquisa e extensão de nossa corporação poderá gerar um 
			embasamento muito melhor para nossas futuras decisões", ele retira um controle remoto do bolso, sorri e aperta um botão. "Até mais".'),
	nl,nl,
	write('Um forte choque perturba suas funções motoras, derrubando-lhe no chão. Seringas -- seus sentidos foram atordoados demais para se perceber 
			de onde -- se aproximam de seu braço e perfuram suas veias. Rapidamente sua consciência se esvai, te restando apenas o sono profundo.'),
	nl.





/***************************************************************
*	SINALIZADORES DE VIDAS
*
*	Conjunto de regras que trabalham junto com a função/regra
*	"vidas(Y, V, K, Classe)". Sinalizam quais medidas devem ser
*	tomadas de acordo com a vida atual do jogador.
*****************************************************************/

vidas(0) :-
	/*situação de vida 0: usuário errou todas as tentativas.*/
	
	write('Você morreu.'), nl,
    final(0),
	encerramento,
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
        (
			NV = 1 -> (write('Gostaria de receber uma dica? (y/n)'), nl, read(D), nl); 
			NV \= 0 -> string_to_list(D, "n");
			vidas(NV))
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
		Y = 6 -> K is 50;
		Y = 8 -> K is 51;
		Y = 9 -> K is 52;
		random_between(1, 7, K)
	).
	
decide_final(E1, E2, E4, F) :-
	
	(
		(((E1 = 1, E2 = 1); (E1 = 1, E4 = 1); (E2 = 1, E4 = 1)) -> F is 1);
		(((E1 = 3, E2 = 3); (E1 = 3, E4 = 3); (E2 = 3, E4 = 3)) -> F is 3);
		F is 2
	).





/***************************************************************
*	DADOS DO JOGADOR
*	
*	Recolhe informações do jogador que serão importantes para
*	aventura.
***************************************************************/

dados_jogador(Nome) :-
	write('Qual o seu nome? (Digite seu nome entre aspas simples e finalize com um ponto final; exemplo: \'Maria\'.)'),
	nl,
	read(Nome).
	
classes(Classe) :-
	nl, nl,
	write('MENU DE CLASSES: escolha uma das classes abaixo, digitando-a no campo de respostas (lembre-se das regras 1 e 2).'), nl,
	write('Cientista : Mestre da experimentação (mais opções de caminho).'), nl,
	write('Ciborgue : Consegue enxergar mais do que os olhos podem ver (recebe uma dica extra por fase).'), nl,
	write('Androide : Carrega várias peças extras para se reparar (tem uma vida extra por fase).'), nl,
	write('Eu quero ser um(a): '),
	read(Classe),
	nl.


/***************************************************************
*	ESTRUTURA PRINCIPAL
*	
*	Regras que dão início ao jogo e que mantêm a sequência de
*	narração.
***************************************************************/

iniciar :-
	write('The Enlightenment Challenge'),
	nl, nl,
	dados_jogador(Nome),
    write('Seja bem vindo(a) ao The Enlightenment Challenge, '),
    write(Nome), write('!'),
	regras,
	introducao(Classe),
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
	write('2. Este jogo funciona como uma narrativa interativa. Ao longo da história, serão apresentados problemas e escolhas ao protagonista, 
			interpretado por você, que exigirão uma resposta para prosseguir com a aventura.'),
	nl,
	write('3. Todas as perguntas que exigem respostas númericas devem ser respondidas com números inteiros (e apenas números, dispensando caracteres alfabéticos).'),
	nl,
	write('4. Ao dar uma resposta não-numérica, coloque a palavra entre aspas simples; a menos que seja um caractere, este dispensa o uso de aspas.'),
	nl,
	write('5. Em certos momentos, o jogo apresentará escolhas que podem resultar em diferentes consequências. Fique atento(a).'),
	nl,
	write('6. Caso não saiba por onde começar, digite "dica." no campo de respostas para receber uma dica relacionada a questão.'),
	nl,
	write('7. Errar uma pergunta fará com que você perca uma vida. São, ao todo, 3 vidas por fase (com exceção de uma das classes). Caso o seu
			total de vidas chegue a zero, o jogo será encerrado.'),
	nl, nl,
	write('O não cumprimento das regras acima fará com que o programa seja executado de forma incorreta.'),
	nl,	
	write('========================================================================================================================'),
	
	nl,
	nl.

introducao(Classe) :-
	write('É o ano de 3052.'), 
	nl, nl,
	write('Embora inúmeros avanços tecnológicos tenham conduzido a humanidade para um futuro utópico, eles também foram a causa de sua queda subsequente.'), 
	nl, nl,
	write('Depois da descoberta de motores capazes de transformar diferentes tipos de energia com até 80% de eficiência e de novas formas altamente 
           produtivas e baratas de extração de energia através da fissura nuclear de átomos, nações rapidamente começaram a conspirar umas contra as 
           outras para a obtenção desse conhecimento.'), 
	nl, nl,
	write('O mundo se tornou um caos, e em meio a guerras e desenvolvimento tecnológico, cerca de 60% da humanidade e suas contruções foram dizimadas.'), 
	nl, nl,
	write('Ironicamente, uma parte do conhecimento obtido pela humanidade a um preço tão alto agora está perdido na destruição.'), 
	nl, nl,
	write('Esta nova realidade sem regras é a deixa perfeita para um caçador de tesouros, você, entrar em ação.'), 
	nl, nl,
	write('Com o objetivo de encontrar um livro antigo contendo os segredos guardados pela humanidade sobre os melhores motores já construídos, 
			você embarca em uma viagem para um laboratório outrora renomado pelas aplicações lá implementadas, 
			mas que hoje se encontra aos pedaços depois de ser alvo de muitos ataques estrangeiros.'), 
	nl, nl,
	write('A viagem até lá não é fácil, ao passo que surgem saqueadores e ladrões ao longo do caminho.'), 
	nl, nl,
	write('Apesar de ferido, você consegue despistar o perigo e chegar ao destino, mas este é apenas o começo...'), 
	nl, nl, nl,
    
	write('Você acorda em uma clareira no que aparenta ser o final de uma floresta.'), 
	nl, nl,
	write('As árvores ao redor, misturadas com restos de androides, indicam que uma batalha foi travada neste lugar; 
           uma fogueira estala a sua frente e uma ligeira dor de cabeça lhe atormenta.'),
	nl, nl,
	write('Sua memória não funciona muito bem, mas você consegue se lembrar de ser um...'),
	
	classes(Classe),
	
	write('Você se levanta e caminha para as ruínas ao lado da clareira.'), 
	nl, nl,
	write('Em cima da entrada, estão escritas as palavras "Centro de Pesquisa Aplicada Carnot IV", em relevo, no granito parcialmente despedaçado.'), 
	nl, nl,
	write('Logo abaixo do letreiro, uma longa escada formada por tijolos rachados leva ao subsolo.'), 
	nl, nl,
	write('Em algum lugar lá embaixo, o Livro Ancião lhe aguarda.'), 
	nl, nl,
	write('Você desce os degraus tendo em mente os perigos que espera encontrar adiante.'), 
	nl, nl,
	write('Afinal, o conhecimento da humanidade adquiriu tamanha importância que era necessário 
           confiná-lo em lugares extremamente seguros para evitar que espiões de outros países o roubasse.'), 
	nl,	nl.

acontecimentos(Nome, Classe) :-
	nl, nl,
	
	/*E1 = escolha de evento 1 do jogador*/
	caminho(1, EV1),
	(	
		EV1 = 1 -> (pergunta(1, Classe), evento(1));
		(pergunta(2, Classe), evento(2))
	),
	
	escolha(1, E1, Classe),
	consequencia(1, E1),
	
	caminho(2, EV2),
	(
		EV2 = 1 -> pergunta(3, Classe);
		EV2 = 2 -> pergunta(4, Classe);
		(pergunta(5, Classe))
	),
	evento(3),
	
	escolha(2, E2, Classe),
	consequencia(2, E2),
	
	evento(4),
	pergunta(6, Classe),
	evento(5),
	
	/*escolha 3, premonição aqui depois*/
	
	caminho(3, EV3),
	(
		EV3 = 1 -> (pergunta(7, Classe), evento(6));
		EV3 = 2 -> (pergunta(8, Classe), evento(7))
	),
	
	escolha(4, E4, Classe),
	consequencia(4, E4),
	
	pergunta(9, Classe),
	evento(8),
	evento(9),
	
	decide_final(E1, E2, E4, F),
	(
	F = 3 -> final(F, Nome);
	final(F)
	).	

encerramento :-
	write('-----------------------------------'),
	nl,
	write('Este jogo faz parte de um projeto desenvolvido pelos alunos Alexandre Lima e Tiago Simionato
			para disciplina de Lógica Básica da Universidade Federal do ABC, ministrada pela 
			professora Maria das Graças Bruno Marietto.'),
	nl, nl,
	write('Obrigado por jogar The Enlightenment Challenge!').
	