image_speed = 0.3
projectile=instance_create(x,y,obj_enemyproj5) 
with (projectile)
    {
    ldx = lengthdir_x(400,point_direction(x,y,obj_player.x,obj_player.y))
    ldy = lengthdir_y(400,point_direction(x,y,obj_player.x,obj_player.y))
    physics_apply_impulse(x,y,ldx,ldy)
}
