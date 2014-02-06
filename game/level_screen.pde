class level_screen extends screen
{
  int playernr = 1;
PImage bgpl1 = new PImage(displayWidth,displayHeight);
  PImage bgpl2 = new PImage(displayWidth,displayHeight);
  color bgc1 = color(200,0,0);
  color bgc2 = color(0,200,0);
  
  level[] levels = { new level("level/l1_bg.jpg","level/pl1g","level/pl2","level/pl2","level/pl2")};

  level_screen()
  {
    for (int px = 0 ; px < bgpl1.width*bgpl1.height ; ++px)
    {
      this.bgpl1.pixels[px] = bgc1;
      this.bgpl2.pixels[px] = bgc2;
    }   
  }

  void draw_screen()
  {
    if (player_count == 1)
      image(draw_level(1),0,0);
    else if (player_count == 2)
    {
      PImage plim1 = draw_level(1);
      PImage plim2 = draw_level(2);
      PImage tmp = new PImage(displayWidth, displayHeight);
      tmp.copy(plim1,0,0,plim1.width,plim1.height,0,displayHeight/4,displayWidth/2,displayHeight/2);
      tmp.copy(plim2,0,0,plim2.width,plim2.height,displayWidth/2,displayHeight/4,displayWidth/2,displayHeight/2);
      image(tmp,0,0);
    }
  }

  PImage draw_level(int playernr)
  {
    PImage tmp = new PImage(displayWidth,displayHeight); 
    switch (playernr)
    {
      case 1: 
        tmp = levels[0].background;
             //tmp.copy(levels[0].player1.draw_animation(),0,0,levels[0].player1.getWidth(),levels[0].player1.getHeight(),0,displayHeight-levels[0].player1.getHeight(),levels[0].player1.getWidth(),levels[0].player1.getHeight());
             break;
      case 2:
        tmp = bgpl2;
       break; 
    }
    return tmp;
  }
}
