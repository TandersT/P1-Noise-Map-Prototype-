class Noise{
int x,y;
int timer;
int r;
int g = 255;
int ra,ra2, ra3, ra4;
int rInc;
int a = 255;

Noise(int posX,int posY, int tempRa){
  x = posX;
  y = posY;
  ra=tempRa;
  ra2=tempRa;
  rInc=ra/3;
}

void display(){
  timer++;
  noStroke();
  fill(r, g, 0);
  ellipse(x, y, ra, ra);
}
void colorC(){
  r = constrain(r, 0, 255);
  g = constrain(g, 0, 255);
  stroke(r,g,0,a);
  strokeWeight(ra/6);
  noFill();
    if (key=='q'||key=='Q') {
      g-=10;
      r+=10;
      ellipse(x,y,ra2,ra2);
      ellipse(x,y,ra3,ra3);
      ellipse(x,y,ra4,ra4);
      if (ra2<ra+rInc){
        ra2+=ra/30;
      }
      if (ra3<ra+rInc*2.5){
        ra3+=ra/30;
      }
        if (ra4<ra+rInc*4){
        ra4+=ra/30;
      }
      if (ra4 >= ra+rInc*4) {
         a-=10;
      }
    if (timer>80) {
    timer = 0;
    ra2 = ra;
    ra3 = ra;
    ra4 = ra;
    a = 255;
    }
  }
    else if (key=='w'||key=='W') {
     r+=10;
     g+=10;
      ellipse(x,y,ra2,ra2);
      ellipse(x,y,ra3,ra3);
      if (ra2<ra+rInc){
        ra2+=ra/30;
      }
      if (ra3<ra+rInc*2.5){
        ra3+=ra/30;
      }
      if (ra3 >= ra+rInc*2.5) {
         a-=10;
      }
      if (timer>80) {
        timer = 0;
        ra2 = ra;
        ra3 = ra;
        a = 255;
        }            
      }
    else if (key=='e'||key=='E') {
     g+=10;
     r-=10;
     ellipse(x,y,ra2,ra2);
      if (ra2<ra+rInc){
        ra2+=ra/30;
      }
      if (ra2 >= ra+rInc) {
        a-=10;
      }
      if (timer>80) {
        timer = 0;
        ra2 = ra;
        a = 255;
      }
   } 
    }
  } //
