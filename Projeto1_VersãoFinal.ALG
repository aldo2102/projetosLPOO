Algoritmo "Projeto I"
// Disciplina: L�gica de Programa��o Orientada a Objeto
// Professor: Aldo Henrique
// Aluno: Victor Leone da Silva Costa
// CPD: 45543

//O conhecimento para a implementa��o das instru��es e constru��o do projeto
//a seguir foi edificado a partir do aprendizado em sala de aula e pesquisas
//em fontes externas.

Var
   init,sexo,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,mor,mor0,mor1,bin,bit,tip :caractere
   menu,count,n0,n1,n2,n3,n4,n5,n6,n7,n8,n9 :inteiro
   med0,med1,med2,med3,med4 :real

procedimento divisao()
inicio
   //Caso 1 - Op��o "1. Divis�o".
   //A op��o 1 foi segmentada, e traz consigo
   //um submenu que permite que o usu�rio escolha se quer realizar uma
   //opera��o de divis�o com ou sem resto. Isto torna-se poss�vel devido
   //� utiliza��o da instru��o 'Escolha-Caso' para separar os tipos de
   //opera��o; semelhante ao que foi feito no MENU PRINCIPAL.
   //Para todas as op��es do menu divis�o foram adicionadas estruturas de
   //sele��o a fim de impedir a divis�o por 0.
   //Inicia-se a estrutura de repeti��o que garantir� que o usu�rio retorne
   //ao menu, uma vez que a funcionalidade escolhida por ele for executada.
   repita
      limpatela
      escreval("              MENU - DIVIS�O")
      escreval("1. Divis�o com resto")
      escreval("2. Divis�o com casas decimais")
      escreval("3. Retornar ao Menu Principal")
      escreval("")
      escreva("Escolha o tipo de divis�o que deseja fazer:")
      leia(menu)
      escolha menu
         //Submenu 1: Divis�o com resto
         //A combina��o de instru��es de opera��es matem�ticas, formata��o de texto
         //e de impress�o, foi utilizada para viabilizar as divis�es com resto.
      caso 1
         //As implementa��es a seguir imprimem o t�tulo da op��o selecionada e solicitam
         //as entradas de dados.
         limpatela
         escreval("              DIVIS�O COM RESTO")
         escreva("Dividendo:")
         leia(n1)
         escreva("Divisor:")
         leia(n2)
         //Antes de proceder para a divis�o, o algoritmo valida se o divisor � maior
         //que 0, por meio das estruturs de sele��o mencionadas anteriormente.
         //Caso o divisor n�o seja maior que 0, ser� impressa no prompt uma breve
         //explica��o sobre divis�es de n�meros > que 0, por 0.
         //Se o divisor for maior que 0, o algoritmo prosseguir� para a pr�xima vali-
         //da��o.
         se(n2=0)e(n1>0)ent�o
            limpatela
            escreval("A divis�o de",n1," por",n2," � indefinida")
            escreval(" ou imposs�vel entre os n�meros.")
            escreval("")
         sen�o
            //A seguinte estrutura de sele��o, foi utulizada para validar a poss�vel
            //entrada de dados: 0/0. Se validada, ser� impressa no prompt uma breve
            //explica��o sobre a entrada.
            se(n1=0)e(n2=0)ent�o
               limpatela
               escreval("A divis�o 0/0 � indeterminada.")
               escreval("")
               //Se n�o for validada, o algoritmo prosseguir� para a realiza��o das opera��es
               //de divis�o.
            sen�o
               //Na seguinte parte da implementa��o, o algoritmo calcular� e atribuir� os
               //valores obtidos para as vari�veis {n3} e {med0}.
               n3<-(n1 mod n2)
               med0<-int(n1/n2)
               //Realizados os c�lculos necess�rios e atribui��es definidas, o algoritmo
               //limpa a tela do prompt e imprime os resultados.
               limpatela
               escreval(n1," dividido por",n2," � igual a",med0," com resto",n3,".")
               escreval("")
               //Ao final, s�o fechadas as estruturas de sele��o e impresso o texto informando
               //que, caso o usu�rio deseje retornar ao menu, � necess�rio pressionar 'Enter'.
            fimse
         fimse
         escreval("Pressione 'Enter' para retornar ao MENU - DIVIS�O.")
         leia(init)
         limpatela
         //Submenu 2: Divis�o com casas decimais
         //A combina��o de instru��es de opera��es matem�ticas, formata��o de texto
         //e de impress�o, foi utilizada para viabilizar as divis�es com duas casas
         //decimais.
      caso 2
         limpatela
         //As instru��es a seguir imprimem o t�tulo da funcionalidade e solicitam
         //as entradas de dados.
         escreval("      DIVIS�O COM CASAS DECIMAIS")
         escreva("Dividendo:")
         leia(n1)
         escreva("Divisor:")
         leia(n2)
         //Antes de proceder para a divis�o, o algoritmo valida se o divisor � maior
         //que 0, por meio das estruturs de sele��o mencionadas anteriormente.
         //Caso o divisor n�o seja maior que 0, ser� impressa no prompt uma breve
         //explica��o sobre divis�es de n�meros > que 0, por 0.
         //Se o divisor for maior que 0, o algoritmo prosseguir� para a pr�xima vali-
         //da��o.
         se(n2=0)e(n1>0)ent�o
            limpatela
            escreval("A divis�o de",n1," por",n2," � indefinida,")
            escreval("ou imposs�vel entre os n�meros.")
            escreval("")
         sen�o
            //A seguinte estrutura de sele��o, foi utulizada para validar a poss�vel
            //entrada de dados: 0/0. Se validada, ser� impressa no prompt uma breve
            //explica��o sobre a entrada.
            se(n1=0)e(n2=0)ent�o
               limpatela
               escreval("A divis�o 0/0 � indeterminada.")
               escreval("")
               //Se n�o for validada, o algoritmo prosseguir� para a realiza��o das opera��es
               //de divis�o.
            sen�o
               //Na seguinte parte da implementa��o, o algoritmo calcular� e atribuir� o
               //valor obtido para a vari�vel {med0}.
               med0<-(n1/n2)
               //Realizado o c�lculo necess�rio e atribui��o definida, o algoritmo
               //limpa a tela do prompt e imprime os resultados.
               limpatela
               escreval(n1," dividido por",n2," � igual a ",(med0):2:2,".")
               escreval("")
               //Ao final, s�o fechadas as estruturas de sele��o e impresso o texto informando
               //que, caso o usu�rio deseje retornar ao menu, � necess�rio pressionar 'Enter'.
            fimse
         fimse
         escreval("Pressione 'Enter' para retornar ao MENU - DIVIS�O.")
         leia(init)
         limpatela
         //� encerrada a instru��o implementada para a viabiliza��o do submenu.
      fimescolha
      limpatela
      //� encerrada a instru��o que mant�m o usu�rio no menu at� que a op��o
      //"Retornar ao MENU PRINCIPAL" seja selecionada.
   at�(menu=3)

fimprocedimento

procedimento faixaet()
inicio
   //A instru��o a seguir limpa o prompt.
   limpatela
   //As instru��es a seguir imprimem o t�tulo da op��o selecionada e solicitam
   //as entradas de dados.
   //Foi adicionado la�o de repeti��o para impedir a entrada de valor
   //inferior a 0.
   escreval("                M�DIA DE IDADE")
   repita
      escreva("Informe a quantidade de indiv�duos:")
      leia(n1)
      se(n1<1)ent�o
         escreval("A quantidade de indiv�duos deve ser num�rica")
         escreval("e superior a 0.")
         escreval("")
      fimse
   at�(n1>0)
   //Foi adicionada a estrutura de sele��o a seguir a fim de prevenir falhas
   //ocasionadas pela divis�o por 0.
   //As instru��es a seguir iniciam uma estrutura de repeti��o baseada na entrada
   //do usu�rio para a quantidade de dados a ser processada.
   para count de 1 at� n1 fa�a
      escreval(" ")
      //Foram adicionadas instru��es de impress�o para que a lista exibida conte em
      //formato ordinal, levando em considera��o os dados inseridos pelo usu�rio.
      escreval(count,"� indiv�duo")
      //Instru��o de impress�o requisitando o dado 'idade', e instru��o para leitura
      //e atribui��o do dado � vari�vel. Conta com la�o de repeti��o para
      //impedir entrada de dado vazio.
      repita
         escreva("Informe a idade:")
         leia(n2)
         se(n2<=0)ent�o
            escreval("Idade deve ser um n�mero positivo. Tente Novamente.")
         fimse
      at�(n2>0)
      //Instru��o de impress�o requisitando o dado 'sexo', e instru��o para leitura
      //e atribui��o do dado � vari�vel.
      //Para a vari�vel sexo, tamb�m foi adicionada estrutura de repeti��o com o ob-
      //jetivo de prevenir que esta fique em branco.
      escreval("Informe: 'F' para feminino, ou 'M' para masculino.")
      repita
         escreva("Sexo:")
         leia(sexo)
      at�(sexo="m")ou(sexo="M")ou(sexo="f")ou(sexo="F")
      //Para ambas as estruturas de sele��o a seguir, foram adicionadas instru��es
      //para garantir que tanto letras mai�sculas quanto min�sculas sejam reconheci-
      //das.
      se(sexo="F")ou(sexo="f")ent�o
         //O trecho a seguir basei-se na entrada de dados do usu�rio considerando a
         //sele��o acima. Caso a entrada seja 'f', ser�o atribu�dos dados �s vari�veis
         //{n5} e {n6}.
         n5<-(n5+n2)
         n6<-(n6+1)
      sen�o
         se(sexo="M")ou(sexo="m")ent�o
            //O trecho a seguir basei-se na entrada de dados do usu�rio considerando a
            //sele��o acima. Caso a entrada seja 'm', ser�o atribu�dos dados �s vari�veis
            //{n7} e {n8}.
            n7<-(n7+n2)
            n8<-(n8+1)
            //S�o encerradas as estruturas de sele��o e repeti��o:
         fimse
      fimse
   fimpara
   //Antes de atribuir dados �s vari�veis {med1},{med2} e {med3}, foram inseridas
   //estruturas de sele��o para prevenir a divis�o por 0.
   se(n6>0)ent�o
      med1<-(n5/n6)
   fimse
   se(n8>0)ent�o
      med2<-(n7/n8)
   fimse
   med3<-(n5+n7)/count
   //As instru��es abaixo, quando executadas, exibem o resultado final obtido
   //a partir do processamento dos dados inseridos pelo usu�rio.
   limpatela
   escreval("")
   escreval("N�mero total de indiv�duos:",count)
   escreval("M�dia das idades:",med3)
   escreval("")
   escreval("N�mero de homens:",n8)
   escreval("M�dia das idades:",med2)
   escreval("")
   escreval("N�mero de mulheres:",n6)
   escreval("M�dia das idades:",med1)
   //Leitura vazia adicionada para que o algoritmo apenas retorne ao menu princi-
   //pal quando pressionada a tecla 'Enter'.
   escreval("")
   escreval("Pressione 'Enter' para retornar ao MENU PRINCIPAL.")
   leia(init)
   limpatela
fimprocedimento

procedimento primos()
inicio
   //Caso 3 - Op��o "3. N�meros Primos".
   limpatela
   //As instru��es a seguir imprimem o t�tulo da op��o selecionada e solicitam
   //as entradas de dados.
   escreval("     SOMA DE N�MEROS PRIMOS NO INTERVALO")
   escreval("")
   escreva("Digite um n�mero:")
   leia(n1)
   //A instru��o 'limpatela' foi adicionada para limpar o prompt.
   limpatela
   //Atribu�do o valor 2 para a vari�vel {count}.
   count<-2
   //A estrutura de sele��o a seguir valida se o n�mero inserido pelo usu�rio
   //� maior que 1. Caso seja, ent�o o c�digo prossegue para o processamento
   //a fim de encontrar os n�meros primos e som�-los. Caso a entrada n�o seja
   //validada, o algoritmo prossegue para a impress�o da mensagem ao final.
   se(n1>1) ent�o
      escreval("N�meros primos no intervalo de 1 at� ",n1,":")
      //Abaixo s�o iniciados dois la�os de repeti��o para que seja verificado se
      //determinado n�mero � primo ou n�o. As estruturas de sele��o atuar�o como
      //contadores, processando cada um dos n�meros que forem encontrados no
      //intervalo.
      //Cada divis�o bem sucedida, adicionar� 1 � vari�vel {n3}. Um n�mero ser�
      //primo quando a vari�vel tiver valor m�ximo 2 at� o final de cada loop.
      enquanto (count<n1) fa�a
         para n2 de 1 at� n1 fa�a
            se(count mod n2 = 0) ent�o
               n3<-(n3+1)
            fimse
            //Encerra-se a estruturas de repeti��o utilizada para gerar os divisores.
         fimpara
         se(n3=2)ent�o
            //Feito o processamento, o algoritmo prossegue para a se��o abaixo, onde
            //� instru�do a imprimir os n�meros primos encontrados, al�m de som�-los.
            escreval("",count,",")
            med0<-(med0+count)
         fimse
         //Ent�o � incrementado o contador para o pr�ximo passo. E zerada a vari�vel
         //{n3} para que esta possa albergar o contador de divis�es bem sucedidas
         //dos pr�ximos n�meros.
         count<-(count+1)
         n3<-0
         //Encerra-se a estrutura de repeti��o utilizada para gerar os dividendos.
      fimenquanto
      //S�o impressos os resultados encontrados.
      escreval("")
      escreval("A soma dos n�meros primos no")
      escreval("intervalo � igual a",med0,".")
      //Caso a primeira estrutura de sele��o desta se��o seja invalidada, as instru-
      //��es a seguir ser�o executadas, imprimindo a mensagem que informa sobre
      //a inexist�ncia de n�meros primos naquele intervalo.
   sen�o
      limpatela
      escreval("N�o existem n�meros primos neste intervalo.")
   fimse
   //Leitura vazia adicionada para que o algoritmo apenas retorne ao menu princi-
   //pal quando pressionada a tecla 'Enter'.
   escreval("")
   escreval("Pressione 'Enter' para retornar ao MENU PRINCIPAL.")
   leia(init)
   limpatela
fimprocedimento

procedimento mmem()
inicio
   //Caso 4 - Op��o "Maior, Menor, e M�dia".
   limpatela
   //� atribuior valor � vari�vel {count} para que o contador comece do n�mero 1.
   count<-1
   //As instru��es a seguir imprimem o t�tulo da op��o selecionada e solicitam
   //as entradas de dados.
   escreval("             MAIOR, MENOR E M�DIA")
   escreval("")
   //La�o de repeti��o iniciado.
   repita
      escreva("Quantos n�meros deseja processar? ")
      leia(n1)
      //Sele��o adicionada para impedir que o algoritmo continue quando o valor
      //estiver vazio ou n�o for num�rico.
      se(n1<1)ent�o
         escreval("A quantidade de n�meros deve ser num�rica e superior a 0!")
         escreval("")
      fimse
      //La�o de repeti��o encerrado quando os requisitos s�o atingidos.
   at�(n1>0)
   //Imprime as requisi��es de entrada em formato ordinal.
   escreva(count,"� n�mero:")
   //Solicita a entrada de dados.
   leia(n2)
   //Atribui valores �s vari�veis para impedir que o algoritmo seja
   //encerrado por erro.
   n3<-n2
   n5<-n2
   n6<-n2
   //� iniciado um la�o de repeti��o para que os n�meros ordinais das
   //requisi��es sejam incrementados.
   para count de 2 at� n1 fa�a
      escreva(count,"� n�mero:")
      leia(n2)
      //Sele��es implementadas para comparar os valores e atribu�-los �s
      //vari�veis.
      se(n2>n3)ent�o
         n3<-n2
      fimse
      se(n2<n5)ent�o
         n5<-n2
      fimse
      //S�o somados os valores obtidos e atribu�dos � vari�vel {n6}.
      n6<-(n6+n2)
   fimpara
   limpatela
   //�... gambiarra para resolver um erro que ocorria ao inserir apenas
   // um valor. (FUNCIONA! ;D)
   se(n1=1)ent�o
      med1<-n2
   sen�o
      med1<-(n6/count)
   fimse
   //Se��o implementada para que sejam impressos os resultados.
   escreval("             MAIOR, MENOR E M�DIA")
   escreval("")
   escreval("Maior:",n3)
   escreval("Menor:",n5)
   escreval("M�dia: ",(med1):4:2)
   //Leitura vazia adicionada para que o algoritmo apenas retorne ao menu princi-
   //pal quando pressionada a tecla 'Enter'.
   escreval("")
   escreval("Pressione 'Enter' para retornar ao MENU PRINCIPAL.")
   leia(init)
   limpatela
fimprocedimento

procedimento morse()
inicio
   //Caso 5 - Op��o "C�digo Morse"
   //Atribui��o de valores morse do tipo caractere �s vari�veis.
   m0<-("-----")
   m1<-(".----")
   m2<-("..---")
   m3<-("...--")
   m4<-("....-")
   m5<-(".....")
   m6<-("-....")
   m7<-("--...")
   m8<-("---..")
   m9<-("----.")
   //O comando "limpatela" limpa o prompt.
   limpatela
   //� impresso o t�tulo da op��o.
   escreval("          C�DIGO MORSE")
   escreval("")
   //La�o de repeti��o implementado para impedir a entrada de dados inv�lidos.
   repita
      //� limpa a vari�vel {init} a cada repeti��o.
      init<-""
      //As instru��es a seguir imprimem a requisi��o e solicitam as entradas de dados.
      escreval("Informe um n�mero para convert�-lo")
      escreval("em c�digo morse.")
      leia(mor)
      //A arte ASCII a seguir ser� exibida se a leitura n�o receber dados.
      se(mor="")ent�o
         limpatela
         escreval("               O C�DIGO DORME")
         escreval("")
         escreval("ZzZzz... Entradas vazias fazem o algoritmo dormir.")
         escreval("                     z           _____________    ")
         escreval("                 z              | * (  *    . |   ")
         escreval("                   Z            |.      . *  *|   ")
         escreval("        .--.  Z Z               |__*_____*__._|   ")
         escreval("       / _(c\   .-.     __                        ")
         escreval("      | / /  '-;   \'-'`  `\______                ")
         escreval("      \_\/'/ __/ )  /  )   |      \--,            ")
         escreval("      | \`--`__-/ .'--/   /--------\  \           ")
         escreval("       ||`  |||-\/   /   /---;-.    `-�           ")
         escreval("                    (________\  \                 ")
         escreval("                              '-'                 ")
      fimse
      //As estruturas de casos e atribui��o de valores a seguir foram implementadas
      //para valorar a vari�vel {mor1} de acordo com a entrada de dados do usu�rio.
      n0 <- compr(mor)
      para count de 1 at� n0 fa�a
         mor0:=copia(mor,count,1)
         escolha mor0
         caso "0"
            mor1<-(mor1+(" ")+m0)
         caso "1"
            mor1<-(mor1+(" ")+m1)
         caso "2"
            mor1<-(mor1+(" ")+m2)
         caso "3"
            mor1<-(mor1+(" ")+m3)
         caso "4"
            mor1<-(mor1+(" ")+m4)
         caso "5"
            mor1<-(mor1+(" ")+m5)
         caso "6"
            mor1<-(mor1+(" ")+m6)
         caso "7"
            mor1<-(mor1+(" ")+m7)
         caso "8"
            mor1<-(mor1+(" ")+m8)
         caso "9"
            mor1<-(mor1+(" ")+m9)
         outrocaso
            init<-"1"
         fimescolha
      fimpara
      //Vari�vel {init} � utilizada como controle de entrada de dados inv�lidos.
      //A sele��o � utilizada para informar ao usu�rio sobre a entrada de dados inv�lidos.
      se(init="1")ent�o
         limpatela
         escreval("          C�DIGO MORSE")
         escreval("")
         escreval("Entrada inv�lida.")
         escreval("Insira apenas n�meros positivos!")
         escreval("")
         mor1<-""
      fimse
      //� encerrado o la�o de repeti��o que atribui valor � vari�vel de controle
      //de exce��es.
   at�(init<>"1")
   //As instru��es a seguir limpam a tela e imprimem o valor digitado pelo
   //usu�rio convertido em c�digo morse.
   se(mor<>"")ent�o
      limpatela
      escreval("          C�DIGO MORSE")
      escreval("")
      escreval(mor, " em morse � ",mor1," !")
      //Leitura vazia adicionada para que o algoritmo apenas retorne ao menu princi-
      //pal quando pressionada a tecla 'Enter'.
   fimse
   escreval("")
   escreval("Pressione 'Enter' para retornar ao MENU PRINCIPAL.")
   leia(init)
   limpatela
fimprocedimento

procedimento bases()
inicio
   //Caso 6 - Op��o "6. Mudan�a de Base".
   //Limpa o prompt
   limpatela
   //As intru��es a seguir imprimem o t�tulo da op��o.
   escreval("             MUDAN�A DE BASE")
   escreval("")
   //La�o de repeti��o iniciado.
   repita
      //vari�vel n3 � zerada para evitar erros.
      n3<-0
      n9<-0
      escreva("Quantos n�meros deseja processar? ")
      leia(n1)
      escreval("")
      //Sele��o adicionada para impedir que o algoritmo continue quando o valor
      //estiver vazio ou n�o for num�rico.
      se(n1<1)ent�o
         escreval("A quantidade de n�meros deve ser num�rica e superior a 0!")
         escreval("")
      fimse
      //La�o de repeti��o � encerrado quando os requisitos s�o atingidos.
   at�(n1>0)
   //� zerado o contador.
   count<-0
   //Imprime a requisi��o de dados e os l�. Implementado la�o de repeti��o
   //para impedir a entrada de n�meros menores que 1.
   para count de 1 at� n1 fa�a
      repita
         escreva("Insira o n�mero que deseja converter:")
         leia(n2)
      at�(n2>0)
      //Imprime a requisi��o do tipo de dado a l�.
      repita
         escreval("Digite 'D' se ",n2," � um n�mero decimal, ou 'B'")
         escreva("se for bin�rio:")
         leia(tip)
         escreval("")
         //Sele��o adicionada para unificar os valores. Necess�ria porque o
         //visualg � bugado.
         se(tip="d")ou(tip="D")ent�o
            tip<-"1"
         fimse
         se(tip="b")ou(tip="B")ent�o
            tip<-"2"
         fimse
      at�(tip="1")ou(tip="2")
      //Escolha caso para cada uma das op��es.
      escolha tip
         //Escolha caso 1 para converter de bin�rio para decimal.
      caso "1"
         //Atribui��o do valor para armazenamento do valor inicial,
         //pois a vari�vel {n2} � modificada durante o processo.
         n3<-n2
         //La�o de repeti��o utilizado para possibilitar os c�lculos.
         enquanto (n2>0) faca
            //Escolha caso implementado para organizar os valores, concatenando
            //0 ou 1 como caractere quando necess�rio para gerar o valor bin�rio final.
            escolha (n2 mod 2)
            caso 0
               bin<-("0"+bin)
            caso 1
               bin<-("1"+bin)
            fimescolha
            //Atribui��o do quociente da divis�o � {n2} para dar continuidade aos
            //c�lculos.
            n2 <- (n2 div 2)
            //La�o de repeti��o encerrado quando 0 � obtido.
         fimenquanto
         //Escolha caso 2 para converter bin�rio para decimal.
      caso "2"
         //Vari�vel {n3} armazena valor inicial da vari�vel {n2}.
         n3<-n2
         //Valor de {n2} � convertido de n�mero para caractere.
         bin<-(numpcarac(n2))
         //{n0} recebe a quantidade de caracteres que comp�em {bin}.
         n0 <- compr(bin)
         //{n1} � zerada.
         n1<-0
         //La�o de repeti��o utilizado para seguimentar as opera��es por algarismo/caractere.
         para count de n0 at� 1 passo -1 fa�a
            //{bit} recebe o algarismo/caractere a ser processado.
            //A instru��o copia permite isolar os caracteres um a um.
            bit:=copia(bin,count,1)
            //La�o de sele��o pava validar se n�mero � bin�rio ou n�o.
            se(bit<>"1")e(bit<>"0")ent�o
               escreval(n3," n�o � um n�mero bin�rio.")
               //Vari�vel de valida��o.
               n9<-1
            sen�o
               //La�o de sele��o utilizado para verificar e calcular os valores.
               //Se o bit armazenado em {bit} for igual a 1, ele � processado. Se 0
               //� ignorado.
               se(bit="1")ent�o
                  med0<-med0+((2^n1)*1)
               fimse
               //Vari�vel {n1} � incrementada.
               n1<-(n1+1)
               //La�o de repeti��o � encerrado.
            fimse
         fimpara
         //O valor da {med0} � atribu�do � {n2} desconsiderando os n�meros
         //fracion�rios.
         n2<-int(med0)
         //� encerrado o Escolha Caso.
      fimescolha
      //La�os de sele��o adicionados para imprimir o resultado de acordo
      //com o caso selecionado.
      se(tip="1")ent�o
         escreval(n3," em bin�rio � ",bin,".")
         escreval(" ")
      fimse
      se(tip="2")e(n9<=0)ent�o
         escreval(n3," bin�rio � ",n2," em decimal.")
         escreval("")
      fimse
      //Se��o de limpeza das vari�veis. Implementada para previnir erros.
      n2<-0
      med0<-0
      bin<-""
      //O contador � incrementado. E o la�o encerrado.
      count<-(count+1)
   fimpara
   //Leitura vazia adicionada para que o algoritmo apenas retorne ao menu princi-
   //pal quando pressionada a tecla 'Enter'.
   escreval("")
   escreval("Pressione 'Enter' para retornar ao MENU PRINCIPAL.")
   leia(init)
   limpatela
fimprocedimento


Inicio

   //Esta se��o de c�digo foi adicionada para a exibi��o do t�tulo do projeto.
   //Al�m disso, tamb�m serve como "gatilho" de in�cio, solicitando que o usu�rio
   //pressione a tecla "Enter" para come�ar. Para tal, a vari�vel {init} faz-se
   //presente, com a finalidade �nica de "ler" um valor vazio.
   //A instru��o 'limpatela' foi adicionada para que o prompt seja limpo.
   escreval("L�gica de Programa��o Orientada a Objetos")
   escreval("                Projeto I")
   escreval("")
   escreva("Pressione Enter para come�ar.")
   leia(init)
   limpatela
   //----------------------------------------------------
   //Esta se��o, quando executada, exibe uma sequ�ncia de textos ordenados
   //como um menu e l� a op��o desejada para que o usu�rio escolha o que
   //deseja fazer.
   repita
      escreval("              MENU PRINCIPAL")
      escreval("1. Divis�o")
      escreval("2. M�dia de idade")
      escreval("3. N�meros Primos")
      escreval("4. Maior, Menor, e M�dia")
      escreval("5. C�digo Morse")
      escreval("6. Mudan�a de Base")
      escreval("7. Sair")
      escreval("")
      //As vari�veis s�o limpas sempre que o usu�rio retorna ao MENU PRINCIPAL.
      init<-""
      sexo<-""
      mor1<-""
      bin<-""
      bit<-""
      count<-0
      n0<-0
      n1<-0
      n2<-0
      n3<-0
      n4<-0
      n5<-0
      n6<-0
      n7<-0
      n8<-0
      n9<-0
      med0<-0
      med1<-0
      med2<-0
      med3<-0
      med4<-0
      escreva("Digite o n�mero da op��o que deseja executar:")
      leia(menu)
      escolha menu
         //----------------------------------------------------
         //Nesta se��o s�o iniciadas as instru��es de escolha.
      caso 1
         divisao
      caso 2
         faixaet
      caso 3
         primos
      caso 4
         mmem
      caso 5
         morse
      caso 6
         bases
      outrocaso
         limpatela
      fimescolha

   at� (menu=7)
Fimalgoritmo