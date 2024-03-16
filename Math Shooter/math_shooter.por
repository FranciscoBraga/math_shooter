programa
{
    inclua biblioteca Graficos --> grf
    inclua biblioteca Teclado --> tcl
    inclua biblioteca Util --> utl
    inclua biblioteca Texto --> txt


    inteiro logo = grf.carregar_imagem("logo.png")
    	inteiro setaCalculadora = grf.carregar_imagem("setaCalculadora.png")
    	
    	 inteiro selecionaMenu = 0
    	 logico  pressionada = falso

    funcao menu(){
    	 inteiro telaInicial = grf.carregar_imagem("telaInicial.jpg")
    
    	 
    	 //inteiro seta = grf.carregar_imagem("seta.png")

    	 inteiro larguraTela = 1080, alturaTela = 700
    	 grf.iniciar_modo_grafico(verdadeiro)
    	 grf.definir_dimensoes_janela(larguraTela, alturaTela)

    	 inteiro carregarFundo = grf.redimensionar_imagem(telaInicial, larguraTela, alturaTela,verdadeiro)
    	 inteiro  carregarLogo  = grf.redimensionar_imagem(logo, 600, 600, verdadeiro)

    	  enquanto(verdadeiro){
    	 	grf.limpar()
    	 	grf.desenhar_imagem(0,0,carregarFundo)
    	 	grf.desenhar_imagem(250, -150, carregarLogo)

    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.0)
    	 	grf.desenhar_texto(350, 275, "Muito Fácil")
    	 	
    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.0)
    	 	grf.desenhar_texto(350, 325, " Fácil")
    	 	
    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.0)
    	 	grf.desenhar_texto(350, 375, "Médio")
    	 	
    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.0)
    	 	grf.desenhar_texto(350, 425, "Difícil")
    	 	
    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.00)
    	 	grf.desenhar_texto(350, 475, " Muito Difícil")

    	 	grf.definir_cor(grf.COR_BRANCO)
    	 	grf.definir_tamanho_texto(60.0)
    	 	grf.desenhar_texto(350, 525, "Extremo")
    	 	
    	 	/*se(selecionaMenu ==0 e pressionada == falso){
    	 		grf.desenhar_imagem(635, 275, setaCalculadora)
    	 		se(tcl.alguma_tecla_pressionada()){ 
    	 			se(tcl.tecla_pressionada(tcl.TECLA_SETA_ABAIXO)){
    	 			selecionaMenu = -1
    	 			
    	 		}
    	 	   }
    	 	}senao se((selecionaMenu ==-1 ou selecionaMenu == 1) e tcl.alguma_tecla_pressionada() ){
    	 	
    	 		grf.desenhar_imagem(635, 350, setaCalculadora)
    	 		se(tcl.alguma_tecla_pressionada() e tcl.tecla_pressionada(tcl.TECLA_SETA_ABAIXO)){
    	 			selecionaMenu = -2
    	 			
    	 		}
    	 	    }*/
    	 	    tecladoMenu()
    	 	    pressionada = falso

    	 	grf.renderizar()
	  }
    }

    funcao tecladoMenu(){
      se(tcl.alguma_tecla_pressionada()  e selecionaMenu == 0){ 
    	 	se(tcl.tecla_pressionada(tcl.TECLA_SETA_ABAIXO) e pressionada == falso){
    	 			selecionaMenu = -1
    	 			pressionada = verdadeiro				
    	 	}			
    	 }
    	 senao se(tcl.alguma_tecla_pressionada()  e selecionaMenu == -1){ 
    	 	se(tcl.tecla_pressionada(tcl.TECLA_SETA_ABAIXO) e pressionada == falso){
    	 			selecionaMenu = -2
    	 			pressionada = verdadeiro				
    	 	}			
    	 }
    	
    }


	
    funcao inicio(){
		menu()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2447; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {selecionaMenu, 12, 14, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */