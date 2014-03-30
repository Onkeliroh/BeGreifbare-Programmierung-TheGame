class level_screen extends screen
{
	private timer level_timer = new timer(10000);

	private	PImage level_image = new PImage(displayWidth,displayHeight);
 
	public int current_level = 0;
	private int total_level = 0;

	private int p1_input = 0;
	private int p2_input = 0;
 
	private  level[] levels = { 
			new level("level/l1_bg.jpg","default lvl 1", PISTOL)
			,new level("level/l2_bg.jpg","default lvl 2", FIST)
	};

  level_screen()
  {
		this.total_level = levels.length;
  }

  void draw_screen()
  {
		background(WHITE);

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
		fill(text_color_2);
    textSize(30);
    textAlign(CENTER);
		text("TIME",displayWidth/2,30);
		text(Double.toString((int)this.level_timer.get_time_left_sec()),displayWidth/2,60);
		text("Player 1: " + Integer.toString(p1_score),120,30);
		if(player_count >= 2)
			text("Player 2: " + Integer.toString(p2_score),120,60);
	}

	void init()
	{
		this.level_timer.start();
		this.level_image = levels[current_level].draw_level();
	}

	void send_input(int player, int command)
	{
		if(player <= player_count)
		{
			switch ( player )
			{
				case 1 : p1_input = command;
									break;
				case 2 : p2_input = command;
									break;
			}
		}
	}

	void inc_current_level()
	{
		if (current_level +1 < total_level )
		{
			++this.current_level;
			this.init();
		}
		else
		{
			game_state = 3;
		}
	}

	void reset()
	{
		this.current_level = 0;
  p1_input = 0;
  p2_input = 0;
	}
}
