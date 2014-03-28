class level
{
  public PImage background;
  public PImage success;
	
	private String order = "default";
	private int success_trigger = -1;
  
  level(String bg, String ord, int trigger )
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth,displayHeight);
    println("Level constructor done");
  }

  PImage draw_level()
  {
    PImage tmp = new PImage(displayWidth,displayHeight); 
		tmp = this.background;
 		tmp.resize(displayWidth- (level_offset_x * 2), displayHeight-(level_offset_y * 2));
    return tmp;
  }

}  
