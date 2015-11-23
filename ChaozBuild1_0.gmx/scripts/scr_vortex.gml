tick++
if tick%20*global.pspd==0
    {
    dtick = true
    }
else
    {
    dtick = false
    }

image_speed=0.2
pro = obj_player

if button=mb_left
    {
    left=true
    right=false
    }
else if button=mb_right
    {
    right=true
    left=false
    }
    

if mouse_check_button(button) && delay = false && instance_number(obj_vortex_pro ) < 1 && place_meeting(mouse_x,mouse_y,obj_parent_wall) = 0 and !collision_line(x,y,mouse_x,mouse_y,obj_parent_wall,true,false)
{
//control delay
//delay=true
//alarm[0]=20

//recoil of arm
knockback = -10

//variables for positioning 
if abs(obj_player.x - mouse_x) < 450
xx = mouse_x
else if abs(obj_player.x - mouse_x) > 450 and(obj_player.x - mouse_x) > 0
xx = obj_player.x - 450
else if abs(obj_player.x - mouse_x) > 450 and(obj_player.x - mouse_x) < 0
xx = obj_player.x + 450

if abs(obj_player.y - mouse_y) < 450
yy = mouse_y
else if abs(obj_player.y - mouse_y) > 450 and(obj_player.y - mouse_y) > 0
yy  = obj_player.y - 450
else if abs(obj_player.y - mouse_y) > 450 and(obj_player.y - mouse_y) < 0
yy  = obj_player.y + 450

pro=instance_create(xx,yy,obj_vortex_pro )
with (pro)
    {
    left=other.left
    right=other.right
    }


}


if instance_exists(obj_vortex_pro)
    {
    knockback = irandom_range(-2,2)
    image_speed = 0.5
    }
else 
    {
    knockback = 0
    image_speed = 0.2
    }

if mouse_check_button_released(button)
with(obj_vortex_pro){
instance_destroy()
}
