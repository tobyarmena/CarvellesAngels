if keyboard_check(vk_space) && delay = false
    {
    with(obj_player)
        {
        phy_linear_damping = 20
        }
    global.legdmg = 2.5
    }
else 
    {
    with(obj_player)
        {
        phy_linear_damping = originaldamp
        }
    global.legdmg = 1
    }

