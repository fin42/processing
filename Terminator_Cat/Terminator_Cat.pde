int x = 200;
int y = 258;
int x2 = 92;
int y2 = 250;
float acceleration = 1;
 PImage catPic;
import ddf.minim.*;
AudioSample sound;


void setup () {
  size(500,500);
  
  catPic = loadImage ("images.jpg");
  catPic.resize(500,500);
  background(catPic);
  
  Minim minim = new Minim(this);        
sound = minim.loadSample("cat-lazer.wav");

  
}

void draw () {
  fill(255,0,0);
  ellipse(x,y,42,30);
 ellipse(x2,y2,42,30);
 
 
if(acceleration == 1){ sound.trigger();}
  
  
  if(mousePressed) {
    println(mouseX);
    println(mouseY);
  }



if(x>width||y>height){
 x2=92;
 y2=250;
 x=200;
 y=258;
 background(catPic);
}


  
 
  noStroke ();
  
 
  
  
}

  void keyPressed() {
    x++;
    y++;
    x2++;
    y2++;

}
  
  
  
  