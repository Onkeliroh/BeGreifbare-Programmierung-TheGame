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
  }
}
