/// @description 
if (global.player_vivo)
{
	#region Verificando se o player caiu na água
	if( obj_player.y > room_height - sprite_height/2)
	{
		instance_destroy();
		instance_create_layer(x, y - sprite_height/2, "Instances", obj_player_splash);
		global.player_vivo = false;
	}
	#endregion
} else
{
	hspeed = -2;
	vspeed = -2;
	
	image_angle += 5;
}