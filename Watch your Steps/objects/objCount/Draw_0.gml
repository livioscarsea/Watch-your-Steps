var muro = place_meeting(player_object.x, player_object.y+1, block_object);

if(!muro && player_object.key_left){
		passi+=1;
	}
/*if(muro && player_object.key_right){
		passi+=1;
	}*///da fixare
draw_text(player_object.x, player_object.y-32, passi);