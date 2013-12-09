//GLOABL

int game_state = 0;

void setup()
{
  size(displayWidth,displayHeight,P2D);
  frameRate(30);
}

void draw()
{
  switch (game_state)
  {
    case 0: draw_title_screen(); break;
    default: draw_title_screen();
  }
  debug();
}

void debug()
{
  println("fps: " + frameRate);
}
