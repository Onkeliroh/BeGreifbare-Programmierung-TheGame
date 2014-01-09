import processing.serial.*;
//GLOABL

int game_state = 0;

screen level = new level_screen();

screen[] screens = {
                    new title_screen(),
                    level,
                    new game_over_screen()};  
                    
Serial port;


void setup()
{
  size(displayWidth,displayHeight,P2D);
  frameRate(30);
  if ( Serial.list().length > 0 )
  { 
    String portName = Serial.list()[0];
    port = new Serial(this, portName, 9600);
  }
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

void serialEvent( Serial port )
{
  byte[] tmp = port.readBytes();
  screens[game_state].send_input(tmp);
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
