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

    fill(text_color_1);
    textSize(40);
    textAlign(CENTER);
    text(game_title1,displayWidth/2,displayHeight/3);
		textSize(30);
    text(game_title2,displayWidth/2,displayHeight/3 + 60);
    
    fill(text_color_1);
    textSize(30);
    textAlign(CENTER);
    text(singleplayer.toUpperCase(),displayWidth/2-250,displayHeight/2+118);

    image(middle_finger,(displayWidth/2-250)-64,displayHeight/2-40,128,128);
    image(devil_horns,(displayWidth/2+250)-64,displayHeight/2-40,128,128);


    fill(text_color_1);
    textSize(30);
    textAlign(CENTER);
    text(multiplayer.toUpperCase(),displayWidth/2+250,displayHeight/2+118);
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
