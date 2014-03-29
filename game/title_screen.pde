class title_screen extends screen
{
  int mode = 0;

  PImage middle_finger = new PImage();
  PImage devil_horns = new PImage();

  title_screen()
  {
    middle_finger = loadImage("pic/middle_finger2.png");
    devil_horns = loadImage("pic/devil_horns2.png");
  }
  
  void draw_screen()
  {
    background(title_bg);

    fill(color(0));
    stroke(stroke_color_headline);
    //rect(displayWidth/2-300,5,600,60,0,0,50,0);

    fill(text_headline_color);
    textSize(40);
    textAlign(CENTER);
    text(game_title,displayWidth/2,displayHeight/3);
  
    
    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("SINGLEPLAYER",displayWidth/2-250,displayHeight/2+118);

    image(middle_finger,(displayWidth/2-250)-64,displayHeight/2-40,128,128);
    image(devil_horns,(displayWidth/2+250)-64,displayHeight/2-40,128,128);


    fill(text_headline_color);
    textSize(30);
    textAlign(CENTER);
    text("MULTIPLAYER",displayWidth/2+250,displayHeight/2+118);
  }
  
  void send_input(int p,int c)
  {
		switch (c)
		{
			case 26: player_count = 1; inc_game_state(); break;
			case 12: player_count = 2; inc_game_state(); break; 
		}
  }
}
