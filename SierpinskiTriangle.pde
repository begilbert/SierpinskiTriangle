public void setup()
{
  size(600, 600);
  noLoop();
}
public void draw()
{
  background(c1, c2, c3);
  fill(0);
  stroke(255);
  fill(255);
  stroke(0);
  sierpinski(5, 595, 590);
  if (up == true) {
      c1 +=2;
      c2 +=2;
      c3 +=2;
  } else {
      c1 -=2;
      c2 -=2;
      c3 -=2;
  }  
  if ( c1 > 245 && c2 > 245 && c3 > 245)
  {
    up = false;
  }
  if ( c1 < 10 && c2 < 10 && c3 < 10) {
    up = true;
  }
}
public void mousePressed() {
  c1 = (int)(Math.random()*256);
  c2 = (int)(Math.random()*256);
  c3 = (int)(Math.random()*256);
}
public void mouseDragged()
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 5) {
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
int c1 = (int)(Math.random()*256);
int c2 = (int)(Math.random()*256);
int c3 = (int)(Math.random()*256);
boolean up = true;
