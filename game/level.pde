class level
{
  public PImage background;
  public PImage success;
	
	private int success_trigger = -1;

	private int img_width = this.calc_img_width();
	private int img_height = this.calc_img_height();

  public	int image_offset_x = (displayWidth - img_width)/2;
  public	int image_offset_y = (displayHeight - img_height)/2;

	level(String bg, String suc, int trigger )
  {
    this.background = loadImage(bg);
    this.background.resize(displayWidth- img_width, displayHeight- img_height);
    this.success = loadImage(suc);
    this.success.resize(displayWidth- img_width, displayHeight- img_height);
		this.success_trigger = trigger;
//    println("Level constructor done");
  }

	int calc_img_width()
	{
		int width_ratio = (displayWidth - (level_offset_x *2))/16;
		width_ratio = width_ratio *16;
		return width_ratio;
	}

	int calc_img_height()
	{
		int height_ratio = (displayHeight - (level_offset_y *2))/9;
		height_ratio = height_ratio *9;
		return height_ratio;
	}
}  
