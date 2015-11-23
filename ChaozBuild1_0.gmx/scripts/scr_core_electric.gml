

time ++
if time%5 == 0
    {
    part_particles_create(global.pulse4_sys,x+irandom_range(-300,300),y+irandom_range(-300,300),global.pulse4_pt,1)
    with(par_enemies)
        {
        if distance_to_object(obj_player) < 300
            {
            hp -= scr_calculatedamage(2);
            repeat(15*global.particlelevel)
            part_particles_create(global.pulse4_sys,x+irandom_range(-60,60),y+irandom_range(-60,60),global.pulse4_pt,1)
            } 
        }
    }
    
part_particles_create(global.pulse4_sys,x+irandom_range(-60,60),y+irandom_range(-60,60),global.pulse4_pt,1)
