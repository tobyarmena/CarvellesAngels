if knockback = 0
    image_index = 0
else    
    image_index = 1

if mouse_check_button(button) && delay = false
{
//control delay
delay=true
alarm[0]=60*global.pspd

//recoil of arm
knockback = -10



//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)

//shoot projectile
projectile=instance_create(xx,yy,obj_pulse_pro)
with(projectile)
    {
    ldx = lengthdir_x(600*global.force,ind.aimdir)
    ldy = lengthdir_y(600*global.force,ind.aimdir)
    physics_apply_impulse(x,y,ldx,ldy)
    }
repeat(15)
part_particles_create(global.pulse4_sys,xx+irandom_range(-30,30),yy+irandom_range(-30,30),global.pulse4_pt,1)
}
if knockback<0{knockback+=1}
