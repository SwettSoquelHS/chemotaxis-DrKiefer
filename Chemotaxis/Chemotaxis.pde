Bacteria b1;
Bacteria[] bact;
PVector dir;
color c;
Boolean run = true;
void setup() {
  fill(0);
  ellipse(width/2, height/2, 500, 500);
  background(255);
  size(800, 800);
  frameRate(60);
  bact = new Bacteria[1000];
  for (int i = 0; i < bact.length; i++) {
    int x = (int)(2 * width * Math.random());
    int y = (int)(2 * height * Math.random());
    int r = (int)(5 * Math.random()) + 20;

    bact[i] = new Bacteria(x, y, r, (int)random(255), (int)random(255), (int)random(255));
  }
  b1 = new Bacteria(width/2, height/2, 30, (int)random(255), (int)random(255), (int)random(255));

  b1.show();


  for (int i = 0; i < bact.length; i++) {
    fill(random(255), random(255), random(255));
  }
}
void draw() {

  background(0);

  if (run == true) {
    textSize(96);
    text("Bleach Time", 125, height/2);
  }

  for (int i = 0; i < bact.length; i++) {

    // fill(random(255), random(255), random(255));

    bact[i].MoveBacteria();

    bact[i].show();
  }
}

void mousePressed() {



  for (int i = 0; i < bact.length; i++) {
    bact[i].x_pos = 0;
    bact[i].y_pos = 0;
    bact[i].r = (int)random(255);
    bact[i].g = (int)random(255);
    bact[i].b = (int)random(255);
  }

  //bact = new Bacteria[1000];
  run = true;
}
class Bacteria {
  float x_pos;
  float y_pos;
  float radius;
  float ellipseX;
  float ellipseY;
  float x, y, v;
  int r, g, b;
  Bacteria(float x, float y, float radius, int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.x = x_pos;
    this.y = y_pos;

    this.radius = radius;
  }
  void show() {


    pushMatrix();
    translate(x_pos * 2, y_pos * 2);
    fill(r, g, b);
    ellipse(width/2, height/2, radius/1.5, radius);


    popMatrix();
  }
  void MoveBacteria() {
    x_pos += (float)(2 * Math.random() - 1);
    y_pos += (float)(2 *  Math.random() -1 );
  }
}
