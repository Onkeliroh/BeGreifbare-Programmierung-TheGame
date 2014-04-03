class level_screen extends screen
{
	private timer level_timer = new timer(10000);
 
	public int current_level = 0;
	private int total_level = 0;
	private boolean level_state = false;

	private int p1_input = 0;
	private int p2_input = 0;
 
	private  level[] levels = {
							// 1.do-picture, 2.solved-pic, 3.action 
			new level("level/l1_bg.jpg","level/l1_bg.jpg", PISTOL),
			new level("level/l2_bg.jpg","level/l2_bg.jpg", FIST)
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
			if ( !this.level_state )
			{
				image(this.levels[this.current_level].background,image_offset_x,image_offset_y);
				if ( this.level_timer.finished() )
				{
				//	println("Timer finished");
					game_state = 2;	//game-over
				}
				if ( this.p1_input == this.levels[current_level].success_trigger )
				{
					++p1_score;
					this.level_state = !this.level_state;
				}
				else if ( this.p2_input == this.levels[current_level].success_trigger )
				{
					++p2_score;
					this.level_state = !this.level_state;
				}
			}
			else
			{	
				background(BLACK);
				delay(2000);
				image(this.levels[this.current_level].success,image_offset_x,image_offset_y);

				textAlign(LEFT);
				textSize(20);
				text("Player 1: " + p1_score,displayWidth/2 - 470,displayHeight/2+130);
				if (player_count > 1)
					text("Player 2: " + p2_score,displayWidth/2 - 470,displayHeight/2+160);

				delay(2000);
								
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
