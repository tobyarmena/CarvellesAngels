if surface_exists(minimap)
    {
    surface_set_target(minimap)
    draw_clear_alpha(c_white,0)
    draw_set_alpha(0.2)
    draw_rectangle(0,0,minimapw,minimaph,false)
    draw_set_alpha(1)
    block_size = 24
    v_space = 4
    h_space = 4
    
    v_offset = -height*(block_size+v_space)
    h_offset = -width*(block_size+h_space)
    v_mid=v_offset/2
    h_mid=h_offset/2
    sprite_size=20 
    sprite_size2=22
    
    playerx=minimapw+global.playerPos_x*block_size+h_space+h_offset+sprite_size+1
    playery=minimaph+global.playerPos_y*block_size+v_space+v_offset+sprite_size+1
    
    room_x =  minimapw-(playerx-minimapw/2)+4
    room_y =  minimaph-(playery-minimaph/2)+4
    
    
    for(i=0;i<width;i++)
        for(j=0;j<height;j++)
            {
            if(i==global.playerPos_x && j==global.playerPos_y)
                { 
                if (ds_grid_get(global.map,i,j) == 2)
                    {
                    roomindex = 3
                    }
                else
                    {
                    roomindex = 1
                    }
                }
            else
                {
                if (ds_grid_get(global.map,i,j) == 2)
                    {
                    roomindex = 2
                    }
                else
                    {
                    roomindex = 0
                    }
                }
                
            if(visited[i,j]==true)
                {
                scr_checkdoor()
                draw_sprite_stretched(spr_miniMap,roomindex,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
                if c_left==true//abs(ds_grid_get(global.mpath,i-1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i-1,j) >0 //left door
                    {
                    draw_set_colour(c_red)
                    draw_rectangle(room_x+i*block_size+h_space+h_offset-1,room_y+j*block_size+v_space+v_offset+sprite_size/2-4,room_x+i*block_size+h_space+h_offset-3,room_y+j*block_size+v_space+v_offset+sprite_size/2+4,0)
                    }
                if c_right==true//abs(ds_grid_get(global.mpath,i+1,j)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i+1,j) >0 //right door
                    {
                    draw_set_colour(c_red)
                    draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size+1,room_y+j*block_size+v_space+v_offset+sprite_size/2-2,room_x+i*block_size+h_space+h_offset+sprite_size+3,room_y+j*block_size+v_space+v_offset+sprite_size/2+4,0)
                    }
                if c_up==true//abs(ds_grid_get(global.mpath,i,j-1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j-1) >0 //up door
                    {
                    draw_set_colour(c_red)
                    draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size/2-4,room_y+j*block_size+v_space+v_offset-1,room_x+i*block_size+h_space+h_offset+sprite_size/2+4,room_y+j*block_size+v_space+v_offset-3,0)
                    }
                if c_down==true//abs(ds_grid_get(global.mpath,i,j+1)-ds_grid_get(global.mpath,i,j))==1 && ds_grid_get(global.mpath,i,j+1) >0 //down door
                    {
                    draw_set_colour(c_red)
                    draw_rectangle(room_x+i*block_size+h_space+h_offset+sprite_size/2-4,room_y+j*block_size+v_space+v_offset+sprite_size+1,room_x+i*block_size+h_space+h_offset+sprite_size/2+4,room_y+j*block_size+v_space+v_offset+sprite_size+3,0)    
                    }
                }
           else if ds_grid_get(global.roomBeside,i,j) = 1 && ds_grid_get(global.map,i,j) > 0 && ds_grid_get(global.roomVisit,i,j)==0 or ds_grid_get(global.drawn,i,j) = 1 && ds_grid_get(global.roomVisit,i,j)==0
                {
                 if ds_grid_get(global.map,i,j) = 2
                    {
                    draw_sprite_stretched(spr_miniMap,5,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
                    ds_grid_set(global.drawn,i,j,1)
                    }
                  else
                    {
                    draw_sprite_stretched(spr_miniMap,4,room_x+i*block_size+h_space+h_offset,room_y+j*block_size+v_space+v_offset,sprite_size,sprite_size)
                    ds_grid_set(global.drawn,i,j,1)
                    }
                }
           }
    
    surface_reset_target();
    }
else
    {
    minimap = surface_create(minimapw,minimaph)
    }
