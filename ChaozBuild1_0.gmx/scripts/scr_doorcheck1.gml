//check which doors can open

//up

if abs(ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y -1)-ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y))==1 && ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y -1) !=0
    {
    global.doorup=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==3)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==6)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==9)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==10)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y -1) != 0)
        global.doorup=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y-1)==5)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y-1)==8)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y-1)==10)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y-1)==11)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y-1)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y -1) != 0)
        global.doorup=true
    }
else
    {
    global.doorup=false
    }

//down
if abs(ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y +1)-ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y))==1 && ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y +1) !=0
    {
    global.doordown=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==5)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==8)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==10)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==11)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y +1) != 0)
        global.doordown=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y+1)==3)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y+1)==6)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y+1)==9)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y+1)==10)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y+1)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y +1) != 0)
        global.doordown=true
    }
else
    {
    global.doordown=false
    }

//left
if abs(ds_grid_get(global.mpath,global.playerPos_x-1,global.playerPos_y)-ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y))==1 && ds_grid_get(global.mpath,global.playerPos_x-1,global.playerPos_y) !=0
    {
    global.doorleft=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==2)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==6)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==7)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==8)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x-1,global.playerPos_y) != 0)
        global.doorleft=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x-1,global.playerPos_y)==4)||(ds_grid_get(global.mopen,global.playerPos_x-1,global.playerPos_y)==7)||(ds_grid_get(global.mopen,global.playerPos_x-1,global.playerPos_y)==9)||(ds_grid_get(global.mopen,global.playerPos_x-1,global.playerPos_y)==11)||(ds_grid_get(global.mopen,global.playerPos_x-1,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x-1,global.playerPos_y) != 0)
        global.doorleft=true
    }
else
    {
    global.doorleft=false
    }
    
//right
if abs(ds_grid_get(global.mpath,global.playerPos_x+1,global.playerPos_y)-ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y))==1 && ds_grid_get(global.mpath,global.playerPos_x+1,global.playerPos_y) !=0
    {
    global.doorright=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==4)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==7)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==9)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==11)||(ds_grid_get(global.mopen,global.playerPos_x,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x+1,global.playerPos_y) != 0)
        global.doorright=true
    }
else if (ds_grid_get(global.mopen,global.playerPos_x+1,global.playerPos_y)==2)||(ds_grid_get(global.mopen,global.playerPos_x+1,global.playerPos_y)==6)||(ds_grid_get(global.mopen,global.playerPos_x+1,global.playerPos_y)==7)||(ds_grid_get(global.mopen,global.playerPos_x+1,global.playerPos_y)==8)||(ds_grid_get(global.mopen,global.playerPos_x+1,global.playerPos_y)==1)
    {
    if (ds_grid_get(global.mpath,global.playerPos_x+1,global.playerPos_y) != 0)
        global.doorright=true
    }
else
    {
    global.doorright=false
    }
    
if (ds_grid_get(global.mpath,global.playerPos_x+1,global.playerPos_y) == 0)
    global.doorright=false
if (ds_grid_get(global.mpath,global.playerPos_x-1,global.playerPos_y) == 0)
    global.doorleft=false
if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y +1) == 0)
    global.doordown=false    
if (ds_grid_get(global.mpath,global.playerPos_x,global.playerPos_y -1) == 0)
    global.doorup=false   
