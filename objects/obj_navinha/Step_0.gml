/*if keyboard_check(vk_up){
	sprite_index = spr_navinha_voando;
	speed = 5;
}else if keyboard_check(vk_down){
	sprite_index = spr_navinha_voando;
	speed = -5;
	
}else {
	sprite_index = spr_navinha_parada;
	speed = 0;
	
}

if keyboard_check(vk_right){
	direction += 4;
}

if keyboard_check(vk_left){
	direction -= 4;
}*/



if keyboard_check(vk_up){
	sprite_index = spr_navinha_voando;
	speed = vel;
}else if keyboard_check(vk_down){
	sprite_index = spr_navinha_voando;
	speed = -vel
	
}else {
	sprite_index = spr_navinha_parada;
	speed = lerp(speed, 0, 0.015);
	
}

if keyboard_check(vk_right){
	direc = -4;
}else if keyboard_check(vk_left){
	direc = 4
	
}else{
	direc = lerp(direc, 0, 0.08);
	
}

if keyboard_check_pressed(vk_space){
	var instancia = instance_create_layer(x,y, "instances", obj_tirobrabo);
	instancia.speed = 8
	instancia.direction = direction;
	instancia.image_angle = direction
}

direction += direc;
image_angle = direction;

move_wrap(true, true, 0);

if vida <= 0{
	game_restart()
}