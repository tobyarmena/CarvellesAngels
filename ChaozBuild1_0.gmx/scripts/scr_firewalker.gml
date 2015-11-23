tick++
if tick%5==0
    {
    instance_create(x,y,obj_firewalkpath)
    with(par_enemies)
    {
    if distance_to_object(obj_firewalkpath) < 96
        {
        hp -= scr_calculatedamage(2)
        }
    }
    }
    

