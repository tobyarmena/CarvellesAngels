

if image_index == 1 || knockback == 0
    image_speed=0

if mouse_check_button(button) && delay = false && instance_number(obj_flame_pro) <200
{

//control delay
delay=true
alarm[0]= 1

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
for(i = 0; i <3; i++)
{
projectile=instance_create(xx,yy,obj_flame_pro)
with(projectile)
    {
    scr_applyimpulse(ind.aimdir - 10 + k,15*global.force)
    //if obj_player.phy_speed>5
    scr_applyimpulse(obj_player.dir,obj_player.phy_speed)//change 10 and k(in flame_pro) to change angle
    }
}
//part_particles_create(global.magma_sys,xx,yy,global.magma_pt,30)
}
if knockback<0{knockback+=0.5}
