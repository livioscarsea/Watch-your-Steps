function collisioneV(obj){
	if (place_meeting(x,y+vsp,obj))
	{
		while (!place_meeting(x,y+sign(vsp),obj))
			{
				y = y + sign(vsp);
			}
		vsp = 0;
	}
	return vsp;
}
function collisioneH(obj){
if (place_meeting(x+hsp,y,obj))
	{
		while (!place_meeting(x+sign(hsp),y,obj))
			{
				x = x + sign(hsp);
			}
		hsp = 0;
	}
	return hsp;
}