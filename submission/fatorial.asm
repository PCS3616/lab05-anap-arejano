    LV 0001 ; Coloca 1 no AC
    MM 0102 ; Inicaliza o resultado com 1
    SC FATORIAL ; chama a subrotina
FIM:    HM ; fim

    @ 0F00
FATORIAL: JP FIM
    LD 0100;
    JZ FIM_ZERO

LOOP:    ML 0102; multiplica N pelo resiltado
    MM 0102; salva o novo resultado
    LD 0100; coloca N no ac
    SB 0106; subtrai 1 de N
    MM 0100; salva o novo valor de N
    LD 0100; coloca o valor de N no acumulador
    JZ FIM_SUBROTINA ; jump pro fim se AC = 0
    JP LOOP ; jump pra nova iteracao
FIM_SUBROTINA:    RS FATORIAL ; fim da subrotina

    LD 0106; 1 no acumulador
    MM 0102; guarda resultado final
FIM_SUBROTINA_ZERO    RS FATORIAL; fim da subrotina 

@ 0106

0106 0001; UM
