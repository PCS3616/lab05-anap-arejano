    SC QUADRADOS ;
    FIM HM /0000

    QUADRADOS JP FIM
    LOOP LD N ; carrega N
    SB MEIA_TRES ; subtrai 63 de N
    JZ FIM_SUBROTINA ; jump se for zero 
    LD N ; carrega n no ac  
    ML DOIS ; multiplica ac por 2
    AD UN ; soma 1 no ac
    LD POSICAO_ANTERIOR ; soma a nova parcela o resultado acumulado 
    LD POSICAO_ATUAL ; carrega o que tem no ac na posiçao atual 
    LD DOIS ; coloca dois no ac ;
    LD POSICAO_ANTERIOR ; agora o ac tem o novo valor de POSICAO_ANTERIOR
    MM POSICAO_ANTERIOR ; salva o novo valor de POSICAO_ANTERIOR
    LD DOIS; coloca dois no ac 
    LD POSICAO_ANTERIOR ; coloca valor da proxima posicao, mas com a op errada
    AD TRANSFORMA_OP ; corrige a operaçao
    MM POSICAO_ATUAL ; salva a nova posicao
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
    POSICAO_ANTERIOR AD /100
    POSICAO_ATUAL MM /102
    TRANSFORMA_OP /5000
    N K =0
