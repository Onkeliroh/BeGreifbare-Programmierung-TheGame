class win_screen extends screen
{
  void draw_screen()
  {
		//TODO replace background with proper image (looks nicer)
    background(win_bg);

    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text(win_text,displayWidth/2,displayHeight/2);

		
  }
}
