class button
{
  int posx, posy, h, w, edge;
  color c;

  button(int x, int y, int h_tmp, int w_tmp, int e)
  {
    posx = x;
    posy = y;
    h = h_tmp;
    w = w_tmp;
    edge = e;
  }

  button(int x, int y, int h_tmp, int w_tmp, int e, color c_tmp)
  {
    posx = x;
    posy = y;
    h = h_tmp;
    w = w_tmp;
    edge = e;
    c = c_tmp;
  }

  //setter
  void set_color(color c_tmp) { c = c_tmp; }

  void draw_button()
  {
    rect(posx,posy,h,w,edge);
  }
}
