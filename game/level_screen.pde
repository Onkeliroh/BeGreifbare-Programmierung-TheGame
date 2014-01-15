class level_screen extends screen
{
  boolean multi_player = false;


  void level_screen(boolean mp)
  {
    multi_player = mp;
  }

  void draw_screen()
  {
    image( draw_level(), 0, 0 );
  }

  PImage draw_level()
  {
    PImage tmp = new PImage(displayWidth, displayHeight);
    for ( int i = 0; i < displayWidth*displayHeight; ++i )
         tmp.pixels[i] = game_over_bg; 
         
    return tmp;
  }
}
