import processing.serial.*;
import ddf.minim.*;
//GLOBAL

int game_state = 0;
int player_count = 1;
int p1_score = 0;
int p2_score = 0;
screen[] screens = new screen[4];
                    
Minim minim;
Audioplayer player;

Serial port;

void setup()
{
  size(displayWidth,displayHeight,P2D);
  frameRate(60);
  if ( Serial.list().length > 0 )
  { 
    String portName = Serial.list()[0];
    port = new Serial(this, portName, 9600);
  }
  
  screens[0] = new title_screen();
  screens[1] = new level_screen();
  screens[2] = new game_over_screen();
  screens[3] = new win_screen();

	minim = new Minim(this);
	player = minim.loadFile("sound/bup_bedee.wav");
	player.loop();
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

	if ( game_state == 1 )
		screens[1].init();
}

void dec_game_state()
{
  if ( ( game_state - 1 ) >= 0 ) 
    --game_state;
   else
    println("Trying to decrement game_state. FAILED!!!");

	if ( game_state == 1 )
		screens[1].init();
}

void reset_game()
{
	this.game_state=0;
	this.p1_score = 0;
	this.p2_score = 0;
	screens[1].reset();
}
