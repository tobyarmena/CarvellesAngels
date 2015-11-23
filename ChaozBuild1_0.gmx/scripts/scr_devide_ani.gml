//Large
if argument0 = 0 
    {
    m1 = instance_create(x,y,obj_devideboss_m);
    m2 = instance_create(x,y,obj_devideboss_m);
    argument0 = -1;
    }
//Medium
if argument0 = 1 
    {
    s1 = instance_create(x,y,obj_devideboss_s);
    s2 = instance_create(x,y,obj_devideboss_s);
    s3 = instance_create(x,y,obj_devideboss_s);
    s4 = instance_create(x,y,obj_devideboss_s);
    argument = -1;
}

//Seperation Animation
//Large
if apply = true && argument0 = 0
    {
    with(m1)
        {
        scr_applyimpulse(0,3000)
    }
    with(m2)
        {
        scr_applyimpulse(180,3000)
    }
}
//small
if apply = true && argument0 = 1
    {
    with(s1)
        {
        scr_applyimpulse(0,500)
    }
    with(s2)
        {
        scr_applyimpulse(180,500)
    }
    with(s3)
        {
        scr_applyimpulse(90,500)
    }
    with(s4)
        {
        scr_applyimpulse(270,500)
    }
}
