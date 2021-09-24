/// @description Insert description here
if(place_meeting(x,y,player_object)&&player_object.keyTake) fermoImmagine(1);
if(place_meeting(x,y,player_object) && keyboard_check_pressed(vk_up)&&player_object.keyTake) {
	room_goto(targetRoom);
	player_object.x=targetX;
	player_object.y=targetY;
}