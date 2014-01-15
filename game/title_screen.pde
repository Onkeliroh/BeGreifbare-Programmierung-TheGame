class title_screen extends screen
{
  int mode = 0;

  PImage middle_finger = new PImage();
  PImage devil_horns = new PImage();

  title_screen()
  {
    println("const");
    middle_finger = loadImage("pic/stinke.png");
    devil_horns = loadImage("pic/rocknroll.png");
  }
  
  void draw_screen()
  {
    background(title_bg);

    fill(color(0));
    stroke(stroke_color_headline);
    rect(displayWidth/2-300,5,600,60,0,0,50,0);

    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text(game_title,displayWidth/2,40);
  
    
    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("SINGLEPLAYER",displayWidth/2-250,displayHeight/2+30);

    image(middle_finger,(displayWidth/2-250)-64,displayHeight/2+40,128,128);
    image(devil_horns,(displayWidth/2+250)-64,displayHeight/2+40,128,128);


    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("MULTIPLAYER",displayWidth/2+250,displayHeight/2+30);
  }
  
  void send_input(byte[] b)
  {
  }
}
