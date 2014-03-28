void keyPressed()
{
  input(1,key);
}

void serialEvent( Serial port )
{
  while (port.available() > 0){
    int player = 1;
    int tmp = port.last();
  
    if((tmp % 2) != 0){
      println("spieler2 mit Geste: " + tmp);
      player = 2;
      tmp -= 1;
    }else{
      println("spieler1 mit Geste: " + tmp);
    }
    input(player, tmp);
  }
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
