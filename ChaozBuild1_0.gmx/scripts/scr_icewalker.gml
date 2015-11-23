tick++
if tick%5==0
    {
    instance_create(x,y,obj_icewalkerpath)
    with(par_enemies)
    {
    if distance_to_object(obj_icewalkerpath) < 96
        {
        hp -= scr_calculatedamage(1)
        }
    }
    }
    

