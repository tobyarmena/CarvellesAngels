global.reschange = true;


window_set_cursor(cr_none); 
physics_pause_enable(false);


global.showinv=false;
instance_activate_all()
part_system_automatic_update(global.magma_sys, true);
part_system_automatic_update(global.magma2_sys, true);
part_system_automatic_update(global.magma3_sys, true);
part_system_automatic_update(global.minigun_sys, true);
part_system_automatic_update(global.minigun2_sys, true);
part_system_automatic_update(global.ice_sys, true);
part_system_automatic_update(global.ice2_sys, true);
part_system_automatic_update(global.ice3_sys, true);
part_system_automatic_update(global.wisp_sys, true);
part_system_automatic_update(global.wisp2_sys, true);
part_system_automatic_update(global.gas_sys, true);
part_system_automatic_update(global.wind_sys, true);

part_system_automatic_update(global.water_sys, true);
part_system_automatic_update(global.club_sys, true);
part_system_automatic_update(global.explosion1_sys, true);
part_system_automatic_update(global.spade_sys, true);
part_system_automatic_update(global.heart_sys, true);
part_system_automatic_update(global.diamond_sys, true);
part_system_automatic_update(global.blackhole1_sys, true);
part_system_automatic_update(global.footdust_sys, true);
part_system_automatic_update(global.water2_sys, true);
part_system_automatic_update(global.blood_sys, true);
part_system_automatic_update(global.blood2_sys, true);
part_system_automatic_update(global.pulse_sys, true);
part_system_automatic_update(global.pulse3_sys, true);
part_system_automatic_update(global.pulse4_sys, true);
part_system_automatic_update(global.heal_sys, true);
part_system_automatic_update(global.firepath_sys, true);
part_system_automatic_update(global.icepath_sys, true);
part_system_automatic_update(global.blackx_sys, true);
part_system_automatic_update(global.magma1_sys, true);
//part_system_automatic_update(global.dash1_sys, true);

for(i=0;i<=maxInvSlots;i+=1)
    {
    with(global.slot[i])
    instance_destroy();   
    }
with(obj_deleteslot)
    instance_destroy()
global.paused = false

if global.showinv == true
surface_free(surf);
