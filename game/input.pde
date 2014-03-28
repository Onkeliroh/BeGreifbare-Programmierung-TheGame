void keyPressed()
{
  input(1,key);
}

void serialEvent( Serial port )
{
  int player = 1;
  byte[] tmp = port.readBytes();
  byte tmp_byte = tmp[0];
  
  // assumes that the input comes from one of the both possible player
  if ((tmp_byte << 7) == 1)
  {
    player = 2;
    tmp_byte = (byte) (tmp_byte &~(1<<7));
  }
  else 
    player = 1;
    
  //only forewarts input from playing players
  if ( player <= player_count ) 
    input(player,(int)tmp_byte);
  
}

void input(int p, int key)
{
  //println(key);
  switch ( key ) 
  {
    case '+': inc_game_state(); break;
    case '-': dec_game_state(); break;
    default: screens[game_state].send_input(p, key);
  }
}
