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
    //shoot projectile
    projectile=instance_create(xx,yy,obj_missle_pro)
    with(projectile)
        {
        phy_bullet = true;
        direction = ind.aimdir;
        ldx = lengthdir_x(800,ind.aimdir)
        ldy = lengthdir_y(800,ind.aimdir)
        physics_apply_impulse(x,y,ldx,ldy)
        defaultdir=ind.aimdir
        }
    
    }
