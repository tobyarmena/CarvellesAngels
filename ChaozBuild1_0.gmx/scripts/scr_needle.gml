

if image_index == 1 || knockback == 0
    image_speed=0

if mouse_check_button(button) && delay = false
{

//control delay
delay=true
alarm[0]=30

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

angle = ind.aimdir

//shoot projectile
for(i = 0; i <10 ; i++)
{
projectile=instance_create(xx+lengthdir_x(irandom_range(-16,16),ind.aimdir),yy+lengthdir_y(irandom_range(-16,16),ind.aimdir),obj_needle_pro)
with(projectile)
    {
    scr_applyimpulse(ind.aimdir + k,5000000000*global.force)
    image_angle = other.angle
    }
}
//part_particles_create(global.magma_sys,xx,yy,global.magma_pt,30)
}
if knockback<0{knockback+=0.5}
