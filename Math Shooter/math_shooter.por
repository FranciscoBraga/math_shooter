programa
{
    inclua biblioteca Graficos --> grf
    inclua biblioteca Teclado --> tcl
    inclua biblioteca Util --> utl
    inclua biblioteca Texto --> txt


    inteiro logo = grf.carregar_imagem("logo.png")
    inteiro telaInicial = grf.carregar_imagem("telaInicial.jpg")
    inteiro carregarFundo, carregarLogo
    inteiro larguraTela = 1080, alturaTela = 700

    funcao menu()


    	
    

    	  carregarFundo = grf.redimensionar_imagem(telaInicial, larguraTela, alturaTela,verdadeiro)
    	   carregarLogo  = grf.redimensionar_imagem(logo, 600, 600, verdadeiro)
    	 
    	
    }
	
	funcao inicio()
	{
	 grf.iniciar_modo_grafico(verdadeiro)
	 grf.definir_dimensoes_janela(larguraTela, alturaTela)
		menu()

	enquanto(verdadeiro){
    	 	grf.limpar()
    	 	grf.desenhar_imagem(0,0,carregarFundo)
    	 	grf.desenhar_imagem(250, -150, carregarLogo)

    	 	grf.renderizar()
    	 }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */