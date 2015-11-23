/*
part_type_sprite(global.blood_pt,spr_blood_pt,false,true,true)
part_type_size(global.blood_pt,0.1,2,0,0)
part_type_speed(global.blood_pt,5,1,-0.5,0)
part_particles_create(global.blood_sys,x,y,global.blood_pt,10)
*/

part_type_sprite(global.blood_pt,spr_blood_pt,false,true,true)
part_type_size(global.blood_pt,0.1,0.4,0,0)
part_type_speed(global.blood_pt,2,14,-1,0)
part_particles_create(global.blood_sys,x,y,global.blood_pt,min(20,argument0)*global.particlelevel)
