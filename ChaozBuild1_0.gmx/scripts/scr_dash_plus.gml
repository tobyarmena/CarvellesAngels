if keyboard_check_pressed(vk_space) && delay = false
    {
    delay = true
    alarm[0]=40
    with(obj_player)
        {
        var xx = lengthdir_x(250000,dir)
        var yy = lengthdir_y(250000,dir)
        physics_apply_impulse(x,y,xx,yy)
        }
    //delay1=true
    candash=10
    with(obj_player)
        phy_linear_damping = originaldamp*0.4
    
    
    }

if candash>0 && candash%3==0
    {
    scr_spritetoparticle(obj_skull,c_aqua)
    scr_spritetoparticle(obj_body,c_aqua)
    scr_spritetoparticle(obj_leftarm,c_aqua)
    scr_spritetoparticle(obj_rightarm,c_aqua)
    scr_spritetoparticle(obj_legs,c_aqua)
    }
if candash <=0
    with(obj_player)
        phy_linear_damping = originaldamp
    
candash -=1
