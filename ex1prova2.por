Algortimo xxx
VAR
    INTEIRO: pares, impares, contador;
INICIO
    pares <- 0

    impares <- 0

    PARA(contador <- 1; contador =< 10; contador <- contador + 1);
        ESCREVA("Digite o", contador,"° Número:");
        LEIA(num);

        SE(num MOD 2 = 0) ENTÃO
            pares <- pares + 1
        SENÃO
            imapres <- impares + 1
        FIM_SE
    FIM_PARA

    ESCREVA("Quantidade de pares:", pares);
    ESCREVA("Quantidade de impares:", impares);
FIM

