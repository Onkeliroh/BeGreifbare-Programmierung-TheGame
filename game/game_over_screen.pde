class game_over_screen extends screen
{
  void draw_screen()
  {
		//TODO replace background with proper image (looks nicer)
    background(game_over_bg);

    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text(game_over_text,displayWidth/2,displayHeight/2);
  
		textAlign(LEFT);
		textSize(20);
		text("FINAL SCORE",displayWidth/2 - 470,displayHeight/2+100);
		text("Player 1: " + p1_score,displayWidth/2 - 470,displayHeight/2+130);
		if (player_count > 1)
			text("Player 2: " + p2_score,displayWidth/2 - 470,displayHeight/2+160);
  }

	void send_input(int player , int command)
	{
		if ( command == INDEX_FINGER ) 
			reset_game();
	}
}
