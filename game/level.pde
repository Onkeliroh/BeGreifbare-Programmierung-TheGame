class level
{
  public PImage background;
  public PImage success;
	
	private int success_trigger = -1;
  
  level(String bg, String suc, int trigger )
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth- (level_offset_x * 2), displayHeight-(level_offset_y * 2));
    this.success = loadImage(suc);
    this.success.resize(displayWidth- (level_offset_x * 2), displayHeight-(level_offset_y * 2));
		this.success_trigger = trigger;
//    println("Level constructor done");
  }
}  
