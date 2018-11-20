PImage img;
ArrayList<Noise> NoiseA;
ArrayList<NoiseLow> NoiseLowA;
ArrayList<NoiseMed> NoiseMedA;
ArrayList<NoiseHigh> NoiseHighA;
int resize = 3;

void setup() {
	NoiseA = new ArrayList<Noise>();
        NoiseLowA = new ArrayList<NoiseLow>();
        NoiseMedA = new ArrayList<NoiseMed>();
        NoiseHighA = new ArrayList<NoiseHigh>();
	size(1920/resize,688/resize);
	img = loadImage("bibloMap8S.png");
	rectMode(CENTER);
	NoiseA.add(new Noise(200,200,30));
        NoiseLowA.add(new NoiseLow(100,100,30));      
        NoiseMedA.add(new NoiseMed(100,150,30)); 
        NoiseHighA.add(new NoiseHigh(100,200,30)); 
}

void draw() {
	image(img,0,0, width,height);
                for (NoiseLow temp : NoiseLowA) {
                temp.display();
                temp.colorC();
        }      
                for (NoiseMed temp : NoiseMedA) {
                temp.display();
                temp.colorC();
                }
                for (NoiseHigh temp : NoiseHighA) {
                temp.display();
                temp.colorC();
                }
		for (Noise temp : NoiseA) {
		temp.display();
		temp.colorC();
	}       
}
void mouseReleased(){
  NoiseA.add(new Noise(mouseX,mouseY,30));
}
