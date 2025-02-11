/// @description 
image_xscale = scaleX * 0.7;
image_yscale = scaleY * 1.3;

_text_scale_x = 0.7;
_text_scale_y = 1.3;

if(!global.transicao_init)
{
	global.destino_tela = destino; 
	
	//Criando a sequencia de transição
	layer_sequence_create("Transicao", 0, 0, sqc_transicao);	
	
	global.transicao_init = true;
	
	if(global.destino_tela = rm_jogo) global.player_vivo = true;
}