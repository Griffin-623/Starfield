Particle [] griff = new Particle[100];
void setup()
{
 size(600,600);
 background(0);
 for(int i = 0; i < 5;i++){
 griff[i]= new OddballParticle();
 }
  for(int i = 5; i < griff.length;i++){
 griff[i]= new Particle();
 }

}
void draw()
{
  background(0);
   for(int i = 0; i < griff.length;i++){
 griff[i].show();
 griff[i].move();
 }
  
}
class Particle
{
  double myX,myY,myAngle,mySize,myOpacity;
  int myColor,mySpeed;
   Particle(){
   myX = ((Math.random()*50)-25)+300;
   myY = ((Math.random()*50)-25)+300;
   myColor =(int)(Math.random()*256);
   myAngle = (Math.random()*Math.PI*2);
   mySpeed = (int)(Math.random()*5+2);
   mySize = (Math.random()*0.1);
   myOpacity = 255;
   
   
   }
   void move(){
   myX = myX + Math.cos(myAngle)*mySpeed;
   myY = myY + Math.sin(myAngle)*mySpeed;
    mySize = mySize + (Math.random()*0.1);
        myOpacity = myOpacity - (Math.random()*1);
   if(myX>640||myY>640||myY<-40||myX<-40){
     myX = ((Math.random()*50)-25)+300;
     myY = ((Math.random()*50)-25)+300;
     mySize = 0;
     myOpacity = 255;
     
   }
   if(mySize > 20&&myOpacity>40){
   myOpacity = myOpacity-30;
   }
   }
   void show(){
     noStroke();
     fill(255,(float)myOpacity);
     ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
   }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
  mySpeed = (int)(Math.random()*5+1);
  mySize = 30;
  }
     
  void move(){
   myX = myX + Math.cos(myAngle)*mySpeed;
   myY = myY + Math.sin(myAngle)*mySpeed;
    mySize = mySize - (Math.random()*0.15);
    myOpacity = myOpacity + (Math.random()*2.5);
        
   if(myX>640||myY>640||myY<-40||myX<-40){
     myX = ((Math.random()*50)-25)+300;
     myY = ((Math.random()*50)-25)+300;
     mySize = 30;
     myOpacity = 0;
     
   }
 
  }
  void show(){

  fill(252,207,3,(float)myOpacity);
  ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  
  }

}
