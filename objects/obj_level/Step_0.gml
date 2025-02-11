/// @description 
if(!global.player_vivo)
{
	//Fazendo o background parar
	layer_hspeed("bg_arvores", 0);
	layer_hspeed("bg_reflexo_arvores", 0);
	layer_hspeed("bg_reflexo_agua", 0);
	layer_hspeed("bg_estrelas", 0);
	layer_hspeed("bg_agua", 0);
	
	exit;
}
	
global.pontuacao += 0.1;
	
if (global.pontuacao >= global.level_list[global.level - 1] && global.level <= 8)
{
	global.level ++;
	layer_hspeed("bg_arvores", -global.level * 0.8);
	layer_hspeed("bg_reflexo_arvores", -global.level * 0.5);
	layer_hspeed("bg_reflexo_agua", -global.level * 0.5);
	layer_hspeed("bg_agua", -global.level * 0.5);
}
		