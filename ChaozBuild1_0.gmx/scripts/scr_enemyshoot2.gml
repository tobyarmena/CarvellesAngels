//Shooting
projectile1=instance_create(x+lengthdir_x(64,argument0),y+lengthdir_y(64,argument0),argument1) 
projectile2=instance_create(x+lengthdir_x(64,argument0+90),y+lengthdir_y(64,argument0+90),argument1)  
projectile3=instance_create(x+lengthdir_x(64,argument0+180),y+lengthdir_y(64,argument0+180),argument1)  
projectile4=instance_create(x+lengthdir_x(64,argument0+270),y+lengthdir_y(64,argument0+270),argument1)  
with (projectile1)
    {
    ldx = lengthdir_x(600,argument0)
    ldy = lengthdir_y(600,argument0)
    physics_apply_impulse(x,y,ldx,ldy)
}
with (projectile2)
    {
    ldx = lengthdir_x(600,argument0+90)
    ldy = lengthdir_y(600,argument0+90)
    physics_apply_impulse(x,y,ldx,ldy)
}
with (projectile3)
    {
    ldx = lengthdir_x(600,argument0+180)
    ldy = lengthdir_y(600,argument0+180)
    physics_apply_impulse(x,y,ldx,ldy)
}
with (projectile4)
    {
    ldx = lengthdir_x(600,argument0+270)
    ldy = lengthdir_y(600,argument0+270)
    physics_apply_impulse(x,y,ldx,ldy)
}
