function scr_ground_check ()
{
    if(duckKey)
   {
       isDucking = true;
       isJumping = false;
       isFalling = true;
   }
   
   if (place_meeting(x, y + 1, obj_ground))
   {
       // if we are touching the ground
       ver_spd = 0;
       isJumping = false;
       isFalling = false;
       
       if(!duckKey)
       {
           isDucking = false;
       }
       
       // if player wants to jump
       if ((jumpKey || jumpKey_Alt) && !duckKey)
       {
           isJumping = true;
           ver_spd = -jump_spd;
           
       }
   }
   else 
   {
       if(isDucking)
       {
           ver_spd += grav * 4;
       }
       else
       {
           if(ver_spd < termVelocity)
           {
               ver_spd += grav;
           }
           if(sign(ver_spd) == 1)
           {
               isFalling = true;
           }
       }
   }

}