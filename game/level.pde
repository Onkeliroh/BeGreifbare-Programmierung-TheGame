class level
{
  public PImage background;
  public PImage success;
  public PImage failure;
  
  level(String bg, String pl1, String pl2, String suc, String fail)
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth,displayHeight);
    println("Level constructor done");
  }
}  
