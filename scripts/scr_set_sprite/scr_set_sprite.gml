function scr_set_sprite()
{
   if(isJumping || isFalling)
       { 
            show_debug_message ("Setting sprite to jump or fall");
            sprite_index = spr_player_jump;
            image_speed = 0.4;
        
       }
       
       if (isDucking)
       {
            show_debug_message("Setting sprite to duck");
            sprite_index = spr_player_slide;
            image_speed = 1;
       }
       
       if (!isJumping && !isFalling && !isDucking)
       {
           show_debug_message("Setting sprite to run");
           sprite_index = spr_player_run;
           image_speed = 1;
       }
}