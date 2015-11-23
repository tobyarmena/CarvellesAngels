
if mouse_check_button_pressed(button){
obj_parent_arm.charge = 1;
with (obj_parent_arm){
    alarm [1] = 15*global.pspd;
    }
}

//shoot projectile
if mouse_check_button_released(button){
//variables for positioning 
click = false;
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)


//recoil of arm
knockback = -10
    
projectile=instance_create(xx,yy,obj_charge_pro)

with(projectile)
{
    ldx = lengthdir_x(10000*global.force,ind.aimdir)
    ldy = lengthdir_y(10000*global.force,ind.aimdir)
    physics_apply_impulse(x,y,ldx,ldy)
    }

part_particles_create(global.magma_sys,xx,yy,global.magma_pt,30*global.particlelevel)
}

