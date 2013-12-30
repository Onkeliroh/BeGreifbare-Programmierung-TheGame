//Author = Daniel Pollack

class button
{
  int posx, posy, h, w, edge, alpha = 255, text_size=16;
  color c = default_button_color, cc = default_button_color;
  String text = " ";

  button(int x, int y, int h_tmp, int w_tmp, int e)
  {
    posx = x;
    posy = y;
    h = h_tmp;
    w = w_tmp;
    edge = e;
  }

  button(int x, int y, int h_tmp, int w_tmp, int e, String text_tmp, color c_tmp)
  {
    posx = x;
    posy = y;
    h = h_tmp;
    w = w_tmp;
    edge = e;
    text = text_tmp;
    c = c_tmp;
    cc = c_tmp;
  }

  button(int x, int y, int h_tmp, int w_tmp, int e, color c_tmp)
  {
    posx = x;
    posy = y;
    h = h_tmp;
    w = w_tmp;
    edge = e;
    c = c_tmp;
    cc = c_tmp;
  }

  //setter
  void set_color(color c_tmp) { c = c_tmp; }
  void set_alpha(int a) { alpha = a; }
  void set_text_size(int s) { text_size = s; }

  void draw_button()
  {
    fill(c,alpha);
    noStroke();
    rect(posx,posy,h,w,edge);
    textAlign(CENTER);
    textSize(text_size);
    text(text,posx+w/2,posy+h/2);
  }

  boolean is_clicked()
  {
    if (is_point_in_rect(mouseX,mouseY,posx,posy,w,h))
    {
      //TODO hightlight on click
      return true;
    }
    return false;
  }
}
