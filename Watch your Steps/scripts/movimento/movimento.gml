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