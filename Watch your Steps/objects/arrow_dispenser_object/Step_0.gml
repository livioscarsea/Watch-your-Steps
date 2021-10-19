timer--;
if(timer==0){
		instance_create_layer(arrow_dispenser_object.x-32, arrow_dispenser_object.y, "arrow_layer", arrow_object);
		timer=50;
}
