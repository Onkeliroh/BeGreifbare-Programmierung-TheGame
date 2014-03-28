void keyPressed()
{
  input(1,key);
}

void serialEvent( Serial port )
{
  while (port.available() > 0){
    int player = 1;
    int tmp = port.last();
  
//  byte[] tmp = port.readBytes();
//  byte tmp_byte = tmp[0];
  
    if((tmp % 2) != 0){
      println("spieler2 mit Geste: " + tmp);
      player = 2;
      //tmp -= 49;
    }else{
      //tmp -= 48;
      println("spieler1 mit Geste: " + tmp);
    }
    input(player, tmp);
  }
//  // assumes that the input comes from one of the both possible player
//  if ((tmp_byte << 7) == 1)
//  {
//    player = 2;
//    tmp_byte = (byte) (tmp_byte &~(1<<7));
//  }
//  else 
//    player = 1;
//    
//  //only forewarts input from playing players
//  if ( player <= player_count ) 
//    input(player,(int)tmp_byte);
//  
}

void input(int p, int key)
{
//  println(p, key);
  switch ( key ) 
  {
    case '+': inc_game_state(); break;
    case '=': inc_game_state(); break;
    case '-': dec_game_state(); break;
		case 'h': screens[game_state].send_input(p,42); break;
    default: screens[game_state].send_input(p, key);
  }
}
