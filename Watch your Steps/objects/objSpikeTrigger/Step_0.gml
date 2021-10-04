var tocca=place_meeting(x,y-1,player_object);
if(tocca){
	if(timer>0){
		timer--;
	}else instance_create_layer(x,y-32,"spike_layer",objRetracticleSpike);
}