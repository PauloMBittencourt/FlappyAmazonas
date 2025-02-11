/// @description
if (global.player_vivo)
{
	var _pontos = global.pontuacao;
	
	draw_set_font(fnt_pontuacao);
	
	draw_text(10, 9, "Pontos: ");
	draw_text(80 , 10, int64(_pontos));
	
	draw_set_font(-1);
}