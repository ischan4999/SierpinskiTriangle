public void setup()
{
  size(500,500);
  noLoop();
}
public void draw()
{
  background(255, 255, 224);
  changeC();
  sierpinski(100, 400, 300);
}
public void mousePressed()//optional
{
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20){
    triangle(x, y, x+(len/2), y-len, x+len, y);
  }
  else{
    triangle(x, y, x+(len/2), y-len, x+len, y);
    changeC();
    sierpinski(x,y,len/2);
    changeC();
    sierpinski(x+(len/2),y,len/2);
    changeC();
    sierpinski(x+(len/4),y-(len/2),len/2);
  }
}
public void changeC(){
  fill(255,(int)(Math.random()*225),(int)(Math.random()*225));
}
