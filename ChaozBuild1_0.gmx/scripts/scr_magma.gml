if mouse_check_button(button) && delay = false
{
//control delay
delay=true
alarm[0]=25*global.pspd

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
projectile=instance_create(xx,yy,obj_magma_pro)
with(projectile)
    {
    ldx = lengthdir_x(10000*global.force,ind.aimdir)
    ldy = lengthdir_y(10000*global.force,ind.aimdir)
    physics_apply_impulse(x,y,ldx,ldy)
    }

part_particles_create(global.magma_sys,xx,yy,global.magma_pt,30*global.particlelevel)
}
if knockback<0{knockback+=1}
