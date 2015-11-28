if delay = false
    {
    with(par_enemies)
        {
        if hp != hpcheck2
            {
            heal = hpcheck2 - hp
            hpcheck2 = hp
            //show_message("OKEWF")
            orb = instance_create(x,y,obj_absorbhealth)
            with(orb)
                {
                heal = other.heal/100
                }
            
            
            }
        }
    delay = true
    if !alarm[0]
        alarm[0] = 30
    }
