class title_screen extends screen
{
  int mode = 0;

  PImage middle_finger;
  PImage devil_horns;

  title_screen()
  {
    println("const");
    middle_finger = loadImage("pic/middle_finger.png");
    devil_horns = loadImage("pic/devil_horns.png");
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
    text(title,displayWidth/2,40);
  
    
    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("SINGLEPLAYER",displayWidth/2-250,displayHeight/2+30);

    image(middle_finger,(displayWidth/2-250)-(middle_finger.width/2),displayHeight/2+40);
    image(devil_horns,(displayWidth/2+250)-(middle_finger.width/2),displayHeight/2+40);


    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("MULTIPLAYER",displayWidth/2+250,displayHeight/2+30);
  }
  
  void send_input(byte[] b)
  {
  }
}
