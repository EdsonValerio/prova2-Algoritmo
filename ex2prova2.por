Algoritmo
VAR
    INTEIRO: contador, alcool, gasolinaC, GasolinaA, diesel, opcao;
INICIO

    contador <- 0;
    alcool <- 0;
    gasolinaC <- 0;
    GasolinaA <- 0;
    diesel <- 0;    

    REPITA
        ESCREVA("[1] Alcool");
        ESCREVA("[2] Gasolina Comum");
        ESCREVA("[3] Gasolina Aditivada");
        ESCREVA("[4] Diesel");
        ESCREVA("[5] Fim");
        LEIA(opcao);

        SE (opcao < 5) ENTÃO
            contador <- contador + 1
        FIM_SE

        ESCOLHA (opcao)
            CASO opcao = 1: alcool <- alcool + 1;
            CASO opcao = 2: gasolinaC <- gasolinaC + 1;
            CASO opcao = 3: GasolinaA <- GasolinaA + 1;
            CASO opcao = 4: diesel <- diesel + 1;
            CASO opcao = 5: ESCREVA("Muito obrigado!");

    ENQUANTO(opcao != 5);

    ESCREVA("Quantidade de abastecimentos:", contador);
    ESCREVA("Alcool:", alcool);
    ESCREVA("Gasolina comum", gasolinaC);
    ESCREVA("Gasolina Aditivada", GasolinaA);
    ESCREVA("Diesel:", diesel);
FIM