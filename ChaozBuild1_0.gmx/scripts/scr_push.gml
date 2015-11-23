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
    alarm[0]=60
    knockback = -10
    with (par_enemies)
       {
       fx = lengthdir_x(100000,point_direction(obj_player.x,obj_player.y,x,y))
       fy = lengthdir_y(100000,point_direction(obj_player.x,obj_player.y,x,y))
            
       if distance_to_object(obj_player) < 200
           {
           physics_apply_impulse(x,y,fx,fy);
        }
        defaultdir=ind.aimdir
        }
    
    }
