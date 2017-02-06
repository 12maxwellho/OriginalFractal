
int c1 = (int)(Math.random()*256);

int c2 = (int)(Math.random()*256);

int c3 = (int)(Math.random()*256);

boolean s1 = true;

boolean s2 = true;

boolean s3 = true;

int di = 5;

int turtle = 4;


public void setup()

{

 size(2000,493);

}

public void draw()

{

 background(255);

 fractal(600,250,di);

 fill(c1,c2,c3);

 if(c1>254)

 {

  s1 = false;

 }

 else if(c1<1)

 {

  s1 = true;

 }



 if(s1 == false)

 {

  c1 -= (int)(Math.random()*5);

 }

 else

 {

  c1 += (int)(Math.random()*5);

 }


 if(c2>254)

 {

  s2 = false;

 }

 else if(c2<1)

 {

  s2 = true;

 }



 if(s2 == false)

 {

  c2 -= (int)(Math.random()*5);

 }

 else

 {

  c2 += (int)(Math.random()*5);

 }


 if(c3>254)

 {

  s3 = false;

 }

 else if(c3<1)

 {

  s3 = true;

 }



 if(s3 == false)

 {

  c3 -= (int)(Math.random()*5);

 }

 else

 {

  c3 += (int)(Math.random()*5);

 }

 frameRate(60);

 fill(0);

 textSize(50);

 fill(c1,c2,c3);

}

public void fractal(int x, int y, int di)

{

 stroke(255);

 ellipse(x,y,di,di);

 if(di>10)

 {

  fractal((int)(x+di/(2*Math.sqrt(2))+di/(4*Math.sqrt(2)))+di*(int)Math.cos(di/360),(int)(y+di/(2*Math.sqrt(2))+di/(4*Math.sqrt(2)))+di*(int)Math.sin(di/360),di/2);

  fractal((int)(x-di/(2*Math.sqrt(2))-di/(4*Math.sqrt(2)))-di*(int)Math.cos(di/360),(int)(y+di/(2*Math.sqrt(2))+di/(4*Math.sqrt(2)))-di*(int)Math.sin(di/360),di/2);

  fractal((int)(x+di/(2*Math.sqrt(2))+di/(4*Math.sqrt(2)))+di*(int)Math.cos(di/360),(int)(y-di/(2*Math.sqrt(2))-di/(4*Math.sqrt(2)))+di*(int)Math.sin(di/360),di/2);

  fractal((int)(x-di/(2*Math.sqrt(2))-di/(4*Math.sqrt(2)))-di*(int)Math.cos(di/360),(int)(y-di/(2*Math.sqrt(2))-di/(4*Math.sqrt(2)))-di*(int)Math.sin(di/360),di/2);

 }

}

public void keyPressed()

{

 if(key=='w')
 {

  di+=10;

 }

 else if(key=='s' && di>0)

 {

  di-=10;

 }


}



