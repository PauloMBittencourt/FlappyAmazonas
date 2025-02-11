/// @description Caso tente sair da tela
if(global.player_vivo) 
{
	#region Texto para não permitir o jogador sair 
		draw_set_font(fnt_texto_colisao);
		draw_set_color(c_yellow);

		if (place_meeting(x, y - sprite_height / 2, obj_box))
			draw_text( room_width/2 + 100, 0, "É perigoso voar muito alto, preciso voar abaixo das copas das árvores");
	
		draw_set_font(-1);
		draw_set_color(-1);
	#endregion
} else
{
	switch (global.colidiu_com) 
	{
		case 0: 
			exit;
			
		case 1:
			draw_text(room_width/2, room_height/1.2, global.mensagem_fim_de_jogo + "se estabacou!!");
			draw_text(room_width/2, room_height/1.2 + 20, "Precione R para reiniciar ou ENTER para voltar para a tela inicial");
		break;
		
		case 2:
			draw_text(room_width/2, room_height/1.2, global.mensagem_fim_de_jogo + "foi pego!!");
			draw_text(room_width/2, room_height/1.2 + 20, "Precione R para reiniciar ou ENTER para voltar para a tela inicial");
		break;
		
		default:
			draw_text(room_width/2, room_height/1.2, global.mensagem_fim_de_jogo);
			draw_text(room_width/2, room_height/1.2 + 20, "Precione R para reiniciar ou ENTER para voltar para a tela inicial");
	}
}