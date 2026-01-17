function scr_jump_check()
{
   if(isJumping) 
       {
          if(ver_spd < 0)
          {
              isJumping = true;
          }
          
          else 
          {
              isJumping = false;
              isFalling = true;
          }
       }
}