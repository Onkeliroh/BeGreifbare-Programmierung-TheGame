class game_over_screen extends screen
{
  void draw_screen()
  {
    background(game_over_bg);

    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text(game_over_text,displayWidth/2,displayHeight/2);
  }
}
