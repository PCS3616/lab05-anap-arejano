    SC QUADRADOS ;
    FIM HM /0000

    QUADRADOS JP FIM
    LOOP LD N ; carrega N
    SB MEIA_TRES ; subtrai 63 de N
    JZ FIM_SUBROTINA ; jump se for zero 
    LD DOIS; carrega 2 no ac
    ML POSICAO_MEMORIA ; multiplica a ultima posicao da memoria por 2
    AD UN ; soma 1 no ac
    MM LEMBRA_RESULTADO ; guarda provisoriamente o resultado
    LD POSICAO_MEMORIA ;
    AD DOIS;
    MM POSICAO_MEMORIA ;
    LD LEMBRA_RESULTADO;
    MM POSICAO_MEMORIA;
    LD N ;
    AD UN ;
    MM N ;
    JP LOOP;

    FIM_SUBROTINA RS QUADRADOS

    @ /0100
    K =0

    @ /0F00
    UN K =1
    DOIS K =2
    MEIA_TRES K =63
    POSICAO_MEMORIA K /0100
    LEMBRA_RESULTADO K =0
    N K =0
