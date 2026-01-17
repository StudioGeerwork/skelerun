function scr_collision_check()
{
    if(place_meeting(x, y + vspeed, obj_ground))
    {
        
        while(!place_meeting(x, y+ sign(ver_spd), obj_ground))
        {
            y = sign(ver_spd);
        }
        vspeed = 0;
    }
    
    y += ver_spd;
}