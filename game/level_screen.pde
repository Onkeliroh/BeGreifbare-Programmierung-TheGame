class level_screen extends screen
{
  int playernr = 1;
	PImage background = new PImage(displayWidth,displayHeight);
	PImage level_image = new PImage(displayWidth,displayHeight);
  color bgc1 = color(200,0,0);
 
	int current_level = 0;
	int total_level = 0; 
  level[] levels = { new level("level/l1_bg.jpg","level/pl1g","level/pl2","level/pl2","level/pl2")};

  level_screen()
  {
    for (int px = 0 ; px < background.width*background.height ; ++px)
    {
      this.background.pixels[px] = bgc1;
    }   
		
		this.total_level = levels.length;
		this.level_image = draw_level();
  }

  void draw_screen()
  {
		if ( total_level > 0 ) // if there is at least on drawable level
		{
			image(this.level_image,level_offset_x,level_offset_y);
		}
//    if (player_count == 1)
//      image(draw_level(1),0,0);
//    else if (player_count == 2)
//    {
//      PImage plim1 = draw_level(1);
//      PImage plim2 = draw_level(2);
//      PImage tmp = new PImage(displayWidth, displayHeight);
//      tmp.copy(plim1,0,0,plim1.width,plim1.height,0,displayHeight/4,displayWidth/2,displayHeight/2);
//      tmp.copy(plim2,0,0,plim2.width,plim2.height,displayWidth/2,displayHeight/4,displayWidth/2,displayHeight/2);
//      image(tmp,0,0);
//    }
  }

  PImage draw_level()
  {
    PImage tmp = new PImage(displayWidth,displayHeight); 
		tmp = levels[0].background;
 		tmp.resize(displayWidth- (level_offset_x * 2), displayHeight-(level_offset_y * 2));
    //tmp.copy(levels[0].player1.draw_animation(),0,0,levels[0].player1.getWidth(),levels[0].player1.getHeight(),0,displayHeight-levels[0].player1.getHeight(),levels[0].player1.getWidth(),levels[0].player1.getHeight());
    return tmp;
  }
}
