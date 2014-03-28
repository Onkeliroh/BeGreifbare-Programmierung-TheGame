class level_screen extends screen
{
	private timer level_timer = new timer(10000);

	PImage background = new PImage(displayWidth,displayHeight);
	PImage level_image = new PImage(displayWidth,displayHeight);
  color bgc1 = color(200,0,0);
 
	int current_level = 0;
	int total_level = 0;

	int p1_input = 0;
	int p2_input = 0;
 
  level[] levels = { 
										new level("level/l1_bg.jpg","default lvl 1",1000)
	};

  level_screen()
  {
    for (int px = 0 ; px < background.width*background.height ; ++px)
    {
      this.background.pixels[px] = bgc1;
    }   
		
		this.total_level = levels.length;

		//initital initialization
		init_level();
  }

  void draw_screen()
  {
		image(background,0,0);
		if ( total_level > 0 ) // if there is at least on drawable level
		{
			image(this.level_image,level_offset_x,level_offset_y);
			if ( this.level_timer.finished() )
			{
				println("Timer finished");
				inc_game_state();	
			}
		}
	
	//TODO insert timer, player scoreboard  

	}

	void init_level()
	{
		this.level_timer.restart();
		this.level_image = levels[current_level].draw_level();
	}

	void send_input(int player, int command)
	{
		switch ( player )
		{
			case 0 : p1_input = command;
								break;
			case 1 : p2_input = command;
								break;
		}
	}
}
