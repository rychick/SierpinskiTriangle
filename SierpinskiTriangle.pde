int heights;
public void setup()
{
  size(800, 800);
  frameRate(60);
}
public void draw()
{
  background(0);
  sierpinski(0, 800, heights);
}

public void mouseDragged(){
  if(mousePressed==true){
  heights=mouseX;
  }
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 30) {
    int diam = 0;
    float r = 255;
    noFill();
    while (diam < 30) {
      stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      triangle(x, y, x+len, y, x+len/2, y-len);
      diam++;
      r-=255/30.0; 
    }
  } else {
  sierpinski(x, y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
}
}
