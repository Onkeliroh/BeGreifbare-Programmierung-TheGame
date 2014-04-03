class level
{
  public PImage background;
  public PImage success;
	
	private int success_trigger = -1;
	private int img_height = (displayHeight - level_offset_y *2)/16;
	private int img_width = (displayWidth - level_offset_x *2)/9;

  public	int image_offset_x = (displayWidth - img_width *16)/2;
  public	int image_offset_y = (displayHeight - img_height *9)/2;

	level(String bg, String suc, int trigger )
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth- img_width *16, displayHeight- img_height *9);
    this.success = loadImage(suc);
    this.success.resize(displayWidth- img_width *16, displayHeight- img_height *9);
		this.success_trigger = trigger;
//    println("Level constructor done");
  }
	void calc_img_height()
	{
		 
	}
}  
