

if image_index == 1 || knockback == 0
    image_speed=0

if mouse_check_button(button){accuracy +=0.05}
if mouse_check_button_released(button){accuracy=0}    
    
if mouse_check_button(button) && delay = false
{

//control delay
delay=true
alarm[0] = max(10 - accuracy/5,2)


//recoil of arm
knockback = -8
image_speed = 0.1
image_index = 1

//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)

//shoot projectile

projectile=instance_create(xx,yy,obj_blunder_pro)
with(projectile)
    {
    scr_applyimpulse(ind.aimdir + irandom_range(max(-other.accuracy,-45),min(other.accuracy,45)),5000000000*global.force)
    }

part_particles_create_colour(global.magma_sys,xx,yy,global.magma_pt,make_colour_hsv(irandom_range(0,255),255,255),5*global.particlelevel)
}
if knockback<0{knockback+=0.5}


image_blend = make_colour_hsv(accuracy*100,255,255)
