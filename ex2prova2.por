Algoritmo
VAR
    // Declaração das variáveis
    // Variáveis do tipo inteiro para contadores de opções e total de abastecimentos
    INTEIRO: contador, alcool, gasolinaC, gasolinaA, diesel, opcao;
    // Variáveis do tipo real para as porcentagens calculadas
    REAL: porcAlcool, porcGasolinaC, porcGasolinaA, porcDiesel;

INICIO
    // Inicialização das variáveis
    contador <- 0;      // Contador para total de abastecimentos
    alcool <- 0;        // Contador para escolhas de álcool
    gasolinaC <- 0;     // Contador para escolhas de gasolina comum
    gasolinaA <- 0;     // Contador para escolhas de gasolina aditivada
    diesel <- 0;        // Contador para escolhas de diesel

    // Estrutura de repetição para entrada de dados
    REPITA
        // Exibição do menu de opções
        ESCREVA("[1] Alcool");
        ESCREVA("[2] Gasolina Comum");
        ESCREVA("[3] Gasolina Aditivada");
        ESCREVA("[4] Diesel");
        ESCREVA("[5] Fim");

        // Leitura da opção escolhida pelo usuário
        LEIA(opcao);

        // Verifica se a opção é válida (entre 1 e 4)
        SE (opcao >= 1) E (opcao <= 4) ENTÃO
            // Se for válida, incrementa o contador de abastecimentos
            contador <- contador + 1;

            // Estrutura de escolha para contar o tipo de combustível
            ESCOLHA (opcao)
                CASO 1: 
                    alcool <- alcool + 1;        // Incrementa álcool
                CASO 2: 
                    gasolinaC <- gasolinaC + 1;  // Incrementa gasolina comum
                CASO 3: 
                    gasolinaA <- gasolinaA + 1;  // Incrementa gasolina aditivada
                CASO 4: 
                    diesel <- diesel + 1;        // Incrementa diesel
            FIM_ESCOLHA

        SENÃO
            // Caso a opção não seja entre 1 e 4, verifica se não é a opção de saída (5)
            SE opcao <> 5 ENTÃO
                // Se for inválida, exibe a mensagem de erro
                ESCREVA("Opção invalida!!");
            FIM_SE
        FIM_SE

    // Repete o processo até que a opção escolhida seja 5 (Fim)
    ENQUANTO(opcao <> 5);

    // Verifica se houve ao menos um abastecimento para calcular as porcentagens
    SE(contador > 0) ENTÃO
        // Calcula as porcentagens de cada combustível
        porcAlcool <- alcool / contador * 100;
        porcGasolinaC <- gasolinaC / contador * 100;
        porcGasolinaA <- gasolinaA / contador * 100;
        porcDiesel <- diesel / contador * 100;
    SENÃO
        // Se não houve abastecimentos, as porcentagens são 0
        porcAlcool <- 0;
        porcGasolinaC <- 0;
        porcGasolinaA <- 0;
        porcDiesel <- 0;
    FIM_SE

    // Exibe os resultados finais
    ESCREVA("Quantidade total de abastecimentos: ", contador);
    ESCREVA("Alcool: ", porcAlcool, "%");
    ESCREVA("Gasolina comum: ", porcGasolinaC, "%");
    ESCREVA("Gasolina aditivada: ", porcGasolinaA, "%");
    ESCREVA("Diesel: ", porcDiesel, "%");
FIM
