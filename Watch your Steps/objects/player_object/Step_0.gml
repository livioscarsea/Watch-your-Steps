key_right = keyboard_check_pressed(vk_right);
key_left = keyboard_check_pressed(vk_left);
key_jump = keyboard_check_pressed(vk_space);

//SEZIONE DI DEFINIZIONE DELLA GRAVITA'
var move = key_right - key_left;	//con var definisco una variabile locale, che quindi dura solamente per un frame	//con questa riga di codice evito che il personaggio si muova stranamente in qualsiasi situazione vengano premute destra e sinistra allo stesso momento

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,block_object) && (key_jump))
	{
		vsp = -10;
	}

//SEZIONE DI DEFINIZIONE DELA COLLISIONE ORIZZONTALE
if (place_meeting(x+hsp,y,block_object))
	{
		while (!place_meeting(x+sign(hsp),y,block_object))
			{
				x = x + sign(hsp);
			}
		hsp = 0;
	}
x = x + hsp;

//SEZIONE DI DEFINIZIONE DELA COLLISIONE VERTICALE
if (place_meeting(x,y+vsp,block_object))
	{
		while (!place_meeting(x,y+sign(vsp),block_object))
			{
				y = y + sign(vsp);
			}
		vsp = 0;
	}
y = y + vsp;

//prende le chiavi
if (place_meeting(x,y, key_object)) keyTake=true;

if (place_meeting(x,y, special_key_object)) specialKeyTake=true;

