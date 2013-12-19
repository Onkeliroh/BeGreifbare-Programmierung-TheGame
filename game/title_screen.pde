class title_screen
{
  void draw_title_screen()
  {
    background(title_bg);

    fill(color(0));
    stroke(stroke_color_headline);
    rect(displayWidth/2-300,5,600,60,0,0,50,0);

    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text(title,displayWidth/2,40);



  }
}
