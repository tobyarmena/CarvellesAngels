image_speed = 0.3

//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)
if knockback<0{knockback+=1}

if mouse_check_button(button)&& delay=false 
    {
    delay=true
    alarm[0]=30*global.pspd
    knockback = -10
    angle = ind.aimdir
    //shoot projectile
    projectile=instance_create(xx,yy,obj_wave_pro)
    with(projectile)
        {
        image_angle = other.angle
        phy_bullet = true;
        
        ldx = lengthdir_x(5000*global.force,ind.aimdir)
        ldy = lengthdir_y(5000*global.force,ind.aimdir)
        physics_apply_impulse(x,y,ldx,ldy)
        
        direction = ind.aimdir;
        defaultdir=ind.aimdir
        
        if ind = obj_leftarm
            {
            amplitude = 64;
            }
        if ind = obj_rightarm
            {
            amplitude = -64;
            }
        }
    
    }
