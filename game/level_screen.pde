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
										new level("level/l1_bg.jpg","default lvl 1",42)
	};

  level_screen()
  {
    for (int px = 0 ; px < background.width*background.height ; ++px)
    {
      this.background.pixels[px] = bgc1;
    }   
		
		this.total_level = levels.length;
  }

  void draw_screen()
  {
//		println("PL1 input: " + p1_input);
		image(background,0,0);

		if ( total_level > 0 ) // if there is at least on drawable level
		{
			image(this.level_image,level_offset_x,level_offset_y);
			if ( this.level_timer.finished() )
			{
				println("Timer finished");
				game_state = 2;	
			}
			if ( this.p1_input == this.levels[current_level].success_trigger )
			{
				++p1_score;
				this.inc_current_level();
			}
			else if ( this.p2_input == this.levels[current_level].success_trigger )
			{
				++p2_score;
				this.inc_current_level();
			}
		}

		//draw timer and scores
		text("TIME",displayWidth/2,30);
		text(Double.toString(this.level_timer.get_time_sec()),displayWidth/2,60);
		text("Player 1: " + Integer.toString(p1_score),120,30);
		text("Player 2: " + Integer.toString(p2_score),120,60);
	}

	void init()
	{
		this.level_timer.start();
		this.level_image = levels[current_level].draw_level();
	}

	void send_input(int player, int command)
	{
//		println( "command :" + command);
		switch ( player )
		{
			case 1 : p1_input = command;
								break;
			case 2 : p2_input = command;
								break;
		}
	}

	void inc_current_level()
	{
		println("changing level");
		if (current_level +1 < total_level )
		{
			++current_level;
			++this.current_level;
			this.init();
		}
		else
		{
			game_state = 3;
		}
	}
}
