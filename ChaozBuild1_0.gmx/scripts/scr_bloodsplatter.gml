part_type_sprite(global.blood_pt,spr_blood_pt,false,true,true)
part_type_size(global.blood_pt,0.2,2,0,0)
part_type_speed(global.blood_pt,5,1,-0.5,0)
part_type_life(global.blood_pt,60,60)
part_type_life(global.blood2_pt,60,60)
part_type_alpha2(global.blood_pt,1,1)
part_type_alpha2(global.blood2_pt,1,1)
part_particles_create(global.blood_sys,x,y,global.blood_pt,5*global.particlelevel)


part_type_sprite(global.blood_pt,spr_blood_pt,false,true,true)
part_type_size(global.blood_pt,0.1,0.4,0,0)
part_type_speed(global.blood_pt,7,12,-0.5,0)
part_particles_create(global.blood_sys,x,y,global.blood_pt,10*global.particlelevel)
