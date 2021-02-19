public void setup()
{
  size (500,500);
  rectMode(CENTER);
}

public void draw()
{
  background(52,210,235);
  fill(69,197,230);
  stroke(48,169,199);
  myFractal2(250,250,500);
  fill(27,120,143);
  rect(250,400,500,200);
  fill(230,205,21);
  stroke(201,155,54);
  myFractal3(450,50,75);
  fill(255);
  stroke(200);
  myFractal(275,75,200);
  myFractal(150,100,150);
  myFractal(225,150,100);
  fill(51,37,26);
  stroke(0);
  quad(200,275,400,275,375,350,225,350);
  fill(41,28,18);
  rect(250,175,20,200);
  fill(255);
  triangle(260,250,260,75,400,250);
}

public void myFractal (int x, int y, int siz) //Cloud
{
  circle(x,y,siz);
  if (siz > 10)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y,siz/2);
  }
}

public void myFractal2 (int x, int y, int siz) //Sky
{
  rect(x,y,siz,siz);
  if (siz > 20)
  {
    myFractal2(x-siz/2,y,siz/2);
    myFractal2(x+siz/2,y,siz/2);
    myFractal2(x,y+siz,siz/2);
    myFractal2(x,y-siz,siz/2);
  }  
}

public void myFractal3 (int x, int y, int siz) //Sun
{
  circle(x,y,siz);
  if (siz > 10)
  {
    myFractal3(x,y,siz-5);
  }  
}
