class NoiseLow{
int x,y;
int timer;
int ra,ra2;
int rInc;
int a = 255;

NoiseLow(int posX,int posY, int tempRa){
  x = posX;
  y = posY;
  ra=tempRa;
  ra2=tempRa;
  rInc=ra/3;
}

void display(){
  timer++;
  noStroke();
  fill(0, 255, 0);
  ellipse(x, y, ra, ra);
}
void colorC(){
  stroke(0,255,0,a);
  strokeWeight(ra/6);
  noFill();
  ellipse(x,y,ra2,ra2);
      if (ra2<ra+rInc){
        ra2+=ra/20;
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
