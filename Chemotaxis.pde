Walker[] bob;
void setup(){
size(500,500);
 bob= new Walker [50];
 for(int i=0; i<bob.length;i++)
 {
  bob[i]= new Walker();
 }
}
void draw(){
  background(255);
  for(int i=0; i<bob.length;i++)
  {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker
{
  int myX,myY,myColor;
  Walker()
  {
    
   myX=(int)(Math.random()*500);
   myY=(int)(Math.random()*500);
  
  }
  void walk()
  {
    if(mouseX>myX)
    myX=myX+(int)(Math.random()*9)-2;
    else
    myX=myX+(int)(Math.random()*9)-6;
    if(mouseY>myY)
    myY=myY+(int)(Math.random()*9)-2;
    else
    myY=myY+(int)(Math.random()*9)-6;
  }
  void show()
  {
    if(dist(mouseX,mouseY,myX,myY)<20)
    myColor=color(255,0,0);
    else
    myColor=color(0,255,0);

    fill(myColor);
    ellipse(myX,myY,30,30);
  }
}
