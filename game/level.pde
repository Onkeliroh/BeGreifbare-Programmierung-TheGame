class level
{
  public PImage background;
  public animation player1;
  public animation player2;
  public PImage success;
  public PImage failure;
  
  level(String bg, String pl1, String pl2, String suc, String fail)
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth,displayHeight);
    this.player1 = new animation(pl1, 44);
    //this.player2 = new animation(pl2, 21);
    //this.success = loadImage(level_pic_location + suc);
    //this.failure = loadImage(level_pic_location + fail);
    println("Level constructor done");
  }
}  
