if keyboard_check_pressed(vk_space) && delay = false
    {
    delay = true
    alarm[0]=25
    with(obj_player)
        {
        var xx = lengthdir_x(250000,dir)
        var yy = lengthdir_y(250000,dir)
        physics_apply_impulse(x,y,xx,yy)
        }
    //delay1=true
    candash=10
    
    
    }

if candash>0 && candash%3==0
    {
    scr_spritetoparticle(obj_skull,c_green)
    scr_spritetoparticle(obj_body,c_green)
    scr_spritetoparticle(obj_leftarm,c_green)
    scr_spritetoparticle(obj_rightarm,c_green)
    scr_spritetoparticle(obj_legs,c_green)
    }
    
candash -=1
