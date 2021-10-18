key_right = keyboard_check_pressed(vk_right);
key_left = keyboard_check_pressed(vk_left);
key_jump = keyboard_check_pressed(vk_space);
var move = key_right - key_left;
//rimuovere in versione definitiva solo debug
if(keyboard_check_pressed(ord("R"))) game_restart();

if(image_index==2){
	if (timer > 0){
		timer --;
	}else {
		instance_destroy();
		room_restart();
		}
}else
//SEZIONE DI DEFINIZIONE DELLA GRAVITA'
hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,block_object) && (key_jump))
	{
		vsp = -10;
	}

//COLLISIONE ORIZZONTALE
collisioneH(block_object);

x = x + hsp;

//COLLISIONE VERTICALE
collisioneV(block_object);
collisioneV(spike_object);
collisioneV(objSpikeTrigger);
y = y + vsp;

//prende le chiavi
if (place_meeting(x, y, key_object)) keyTake=true;
if (place_meeting(x, y, special_key_object)) specialKeyTake=true;

//blocco passi
if (!place_empty(x+1, y-1, block_object)) collisioneDx=true;
else collisioneDx=false;
if (!place_empty(x-1, y-1, block_object)) collisioneSx=true;
else collisioneSx=false;

//morte spikes
if(place_meeting(x,y+1, spike_object)){
	hsp=0;
	x=x+hsp;
	fermoImmagine(2);
}
