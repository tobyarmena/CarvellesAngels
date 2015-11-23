if !instance_exists(obj_grounder_effect)
    instance_create(obj_player.x,obj_player.y,obj_grounder_effect)

if keyboard_check(vk_space) && delay = false
    {
    with(obj_player)
        {
        phy_linear_damping = 20
        }
    global.legdmg = 2
    with(obj_grounder_effect)
        {
        image_alpha = min(image_alpha + 0.02,1)
        }
    }
else 
    {
    with(obj_player)
        {
        phy_linear_damping = originaldamp
        }
    global.legdmg = 1
    with(obj_grounder_effect)
        {
        image_alpha = max(image_alpha - 0.02,0)
        }
    }

