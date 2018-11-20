class NoiseHigh{
int x,y;
int timer;
int ra,ra2,ra3,ra4;
int rInc;
int a = 255;

NoiseHigh(int posX,int posY, int tempRa){
  x = posX;
  y = posY;
  ra=tempRa;
  ra2=tempRa;
  ra3=tempRa;
  ra4=tempRa;
  rInc=ra/3;
}

void display(){
  timer++;
  noStroke();
  fill(255, 0, 0);
  ellipse(x, y, ra, ra);
}
void colorC(){
  stroke(255,0,0,a);
  strokeWeight(ra/6);
  noFill();
  ellipse(x,y,ra2,ra2);
  ellipse(x,y,ra3,ra3);
  ellipse(x,y,ra4,ra4);
      if (ra2<ra+rInc){
        ra2+=ra/20;
      }
      if (ra3<ra+rInc*2.5){
        ra3+=ra/20;
      }
      if (ra4<ra+rInc*4){
        ra4+=ra/20;
      }
      if (ra4 >= ra3+rInc) {
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
}
