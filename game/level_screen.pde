class level_screen extends screen
{
	private timer level_timer = new timer(10000);
	private timer level_succes_timer = new timer(3000);
 
	public int current_level = 0;
	private int total_level = 0;
	private boolean level_state = false;

	private int p1_input = 0;
	private int p2_input = 0;
 
	private  level[] levels = {
							// 1.do-picture, 2.solved-pic, 3.action 
			new level("level/Cowboy_1.png","level/Cowboy_2.png", PISTOL),
			new level("level/HoldesWeib_1.png","level/HoldesWeib_2.png", SCISSORS),
			new level("level/Kackhaufen_1.png","level/Kackhaufen_2.png", F_YOU),
			new level("level/Telefon_1.png","level/Telefon_2.png", MOBILE),
			new level("level/Engel_1.png","level/Engel_2.png", DEVIL_HORNS),
			new level("level/Fernseher_1.png","level/Fernseher_2.png", FIST),
			new level("level/Nase_1.png","level/Nase_2.png", PISTOL)
	};

  level_screen()
  {
		this.total_level = levels.length;
  }

  void draw_screen()
  {
		background(WHITE);
		fill(text_color_2);
    textSize(30);
    textAlign(CENTER);

		if ( total_level > 0 ) // if there is at least on drawable level
		{
			if ( !this.level_state )
			{
				image(this.levels[this.current_level].background,
							this.levels[this.current_level].image_offset_x,
							this.levels[this.current_level].image_offset_y);
				text("TIME",displayWidth/2,30);
				text(Double.toString((int)this.level_timer.get_time_left_sec()),displayWidth/2,60);
				
				if ( this.level_timer.finished() )
				{
				//	println("Timer finished");
					game_state = 2;	//game-over
				}
				else 
				{
					if ( this.p1_input == this.levels[current_level].success_trigger )
					{
						++p1_score;
						this.level_state = !this.level_state;
						this.level_succes_timer.restart();
					}
					else if ( this.p2_input == this.levels[current_level].success_trigger )
					{
						++p2_score;
						this.level_state = !this.level_state;
						this.level_succes_timer.restart();
					}
				}
			}
			else if ( !this.level_succes_timer.finished() && this.level_state )
			{	
				image(this.levels[this.current_level].success,
							this.levels[this.current_level].image_offset_x,
							this.levels[this.current_level].image_offset_y);
			//	println("draw");
			}
			else if ( this.level_succes_timer.finished() && this.level_state )
			{
				this.inc_current_level();
			}
		}

		//draw timer and scores
		text("Player 1: " + Integer.toString(p1_score),120,30);
		if(player_count >= 2)
			text("Player 2: " + Integer.toString(p2_score),120,60);
	}

	void init()
	{
		this.level_timer.start();
		this.level_state = false;
		this.p1_input = 0;
		this.p2_input = 0;
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
