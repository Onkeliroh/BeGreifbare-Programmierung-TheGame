void show_fps()
{
  textAlign(LEFT);
  textSize(9);
  fill(color(0,0,0));
  text("FPS: " + (int)frameRate,0,10); 
}

//x and y are meant to be the upper left corner
boolean is_rect_in_rect(float x_1, float y_1, float width_1, float x_2, float y_2, float width_2)
{
  return !((x_1 > x_2+width_2 || x_1+width_1 < x_2) || y_1 < y_2-width_2);
}

boolean is_rect_in_triangle(float x_1, float y_1, float w_1, float x_2, float y_2, float w_2)
{
  //TODO work on real triangle intersection
  return is_rect_in_rect(x_1,y_1,w_1,x_2,y_2,w_2);
}

boolean is_rect_in_line (float x_1, float y_1, float w_1, float x_2, float y_2, float w_2)
{
  return !(x_1 > x_2 + w_2 || x_1 + w_1 < x_2 || y_1 < y_2 - w_2);
}

boolean is_rect_in_ellipse(float rx, float ry, float rw, float rh, float cx, float cy, float cr) {
 
  float circleDistanceX = abs(cx - rx - rw/2);
  float circleDistanceY = abs(cy - ry - rh/2);
 
  if (circleDistanceX > (rw/2 + cr)) { return false; }
  if (circleDistanceY > (rh/2 + cr)) { return false; }
  if (circleDistanceX <= rw/2) { return true; }
  if (circleDistanceY <= rh/2) { return true; }
 
  float cornerDistance = pow(circleDistanceX - rw/2, 2) + pow(circleDistanceY - rh/2, 2);
  return cornerDistance <= pow(cr, 2);
}

boolean is_circle_in_ellipse(float rx, float ry, float rw, float rh, float cx, float cy, float cr)
{
  float box_x = rx + 20;//rw/2;
  float box_y = ry + 20;//rh/2;
  float dis_r_c = floor(sqrt(sq(box_x-cx)+sq(box_y-cy)));
  
  if ( (dis_r_c - cr ) < 2 && (dis_r_c - cr > -2))
    println("bx: " + box_x + " by: " + box_y + " cx: " + cx + " cy: " + cy + " dist: " + dis_r_c);
  return ( (dis_r_c - cr/2 ) < 3 && (dis_r_c - cr/2 > -3)); 
}


