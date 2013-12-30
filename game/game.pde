//GLOABL

int game_state = 0;
screen[] screens = {
                    new title_screen(),
                    new game_over_screen()};  


void setup()
{
  size(displayWidth,displayHeight,P2D);
  frameRate(30);
}

void draw()
{
  screens[game_state].draw_screen();
 //Uncomment if you don't want basic debugging informations 
 //debug();
}


void debug()
{
  println("fps: " + frameRate);
}

void inc_game_state()
{
  if ( ( game_state + 1 ) <= game_state_count ) 
    ++game_state;
   else
    println("Trying to increment game_state. FAILED!!!");
}

void dec_game_state()
{
  if ( ( game_state - 1 ) >= 0 ) 
    --game_state;
   else
    println("Trying to decrement game_state. FAILED!!!");
}
