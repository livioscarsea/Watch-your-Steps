// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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