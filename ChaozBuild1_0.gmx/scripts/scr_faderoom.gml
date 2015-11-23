if transitioning = true
{
    alpha = clamp(alpha + (fade*0.05),0,1)

if(alpha==1)
    {
    global.spawn = argument3
    obj_dungeonControl.activatedoor=false
    
    nextRoom = ds_grid_get(global.map,global.playerPos_x+argument1,global.playerPos_y+argument2)
    
    
    
    ds_grid_set(global.playerGrid,global.playerPos_x,global.playerPos_y ,0)
    global.playerPos_x += argument1
    global.playerPos_y += argument2
    //choose next room
    if nextRoom == 3
        {
        chooseall = choose(3,4,5,6,7,8,10,11,25,26)
        scr_doorcheck1()
        
        //////////////////ALL DOORS CAN OPEN
        if global.doorup==true&&global.doordown==true&&global.doorleft==true&&global.doorright==true
            {
            nextRoom = chooseall
            }
              
        ////////////////THREE DOORS CAN OPEN
        //down, left, right open
        else if global.doorup==false&&global.doordown==true&&global.doorleft==true&&global.doorright==true
            {
            nextRoom = chooseall
            }
        //up, left, right open
        else if global.doorup==true&&global.doordown==false&&global.doorleft==true&&global.doorright==true
            {
            nextRoom = chooseall
            }
        //up, down, right open
        else if global.doorup==true&&global.doordown==true&&global.doorleft==false&&global.doorright==true
            {
            nextRoom = chooseall
            }
        //up, down, left open
        else if global.doorup==true&&global.doordown==true&&global.doorleft==true&&global.doorright==false
            {
            nextRoom = chooseall
            }
            
        ///////////////TWO DOORS CAN OPEN
        //up, down open
        else if global.doorup==true&&global.doordown==true&&global.doorleft==false&&global.doorright==false
            {
            //roomtype=choose(1,2)
            //if roomtype = 1
                //nextRoom = chooseall
            //else
                nextRoom = choose(15)
            } 
            
        //up, left open
        else if global.doorup==true&&global.doordown==false&&global.doorleft==true&&global.doorright==false
            {
            nextRoom = chooseall
            } 
        //up, right open
        else if global.doorup==true&&global.doordown==false&&global.doorleft==false&&global.doorright==true
            {
            nextRoom = chooseall
            } 
            
            
        //down, left open
        else if global.doorup==false&&global.doordown==true&&global.doorleft==true&&global.doorright==false
            {
            nextRoom = chooseall
            } 
            
        //down, right open
        else if global.doorup==false&&global.doordown==true&&global.doorleft==false&&global.doorright==true
            {
            nextRoom = chooseall
            }
            
        //left, right open
        else if global.doorup==false&&global.doordown==false&&global.doorleft==true&&global.doorright==true
            {
            if global.spawn == "left"
                {
                roomtype=choose(1,2)
                if roomtype = 1
                    nextRoom = chooseall
                else
                    choose(12,13,16)
                }
            else
                {
                roomtype=choose(1,2)
                if roomtype = 1
                    nextRoom = chooseall
                else
                    choose(12)
                }
            }
            
        ////////////////////SINGLE DOORS
            
        //up open
        else if global.doorup==true&&global.doordown==false&&global.doorleft==false&&global.doorright==false
            {
            nextRoom = choose(9)
            }
            
        //down open
        else if global.doorup==false&&global.doordown==true&&global.doorleft==false&&global.doorright==false
            {
            nextRoom = choose(9)
            }
            
        //left open
        else if global.doorup==false&&global.doordown==false&&global.doorleft==true&&global.doorright==false
            {
            nextRoom = choose(9)
            }
            
        //right open
        else if global.doorup==false&&global.doordown==false&&global.doorleft==false&&global.doorright==true
            {
            nextRoom = choose(9)
            }
            
        
            
        
            
        
        
        }
    
    //global.spawn = argument3
    
    if visited[global.playerPos_x,global.playerPos_y] = false
        setRoom[global.playerPos_x,global.playerPos_y] = room_duplicate(global.room_value[global.currentDungeon,nextRoom])
    
    room_goto(setRoom[global.playerPos_x,global.playerPos_y])
    alarm[0]=10
    fade = -1;

    global.firstTouch = true
    }
    
if (alpha==0)&&(fade == -1)
    {
    transitioning = false;
    fade = 1
    alpha = 0
    obj_dungeonControl.activatedoor=false
    }
}
    
