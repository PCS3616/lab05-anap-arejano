    SC QUADRADOS ;
    FIM HM /0000

    QUADRADOS JP FIM
    LOOP LD N ; carrega N
    SB MEIA_TRES ; subtrai 63 de N
    JZ FIM_SUBROTINA ; jump se for zero 
    LD POSICAO_MEMORIA; carrega a ultima posicao da memoria no ac
    ML DOIS ; multiplica a ac(com a ultima posicao da memoria) por 2
    AD UN ; soma 1 no ac
    MM LEMBRA_RESULTADO ; guarda provisoriamente o resultado
    LD POSICAO_MEMORIA ; carrega posicao no ac
    AD DOIS; soam 2 no ac  
    MM POSICAO_MEMORIA ; guarda resultado na posicao
    LD LEMBRA_RESULTADO; carrega o resultado anterior
    MM POSICAO_MEMORIA; guarda o resultado anterior na nova posiçao de memoria
    LD N ; carrega n
    AD UN ; soma um no ac
    MM N ; guarda o novo valor de n 
    JP LOOP; retorna pro loop 

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
