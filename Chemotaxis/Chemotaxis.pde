Bacteria b1;
Bacteria[] bact;
PVector dir;
void setup() {
  background(0);
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
   //fill(random(255), random(255), random(255));
  b1.show();
}
void mousePressed() {
if(mousePressed) {
 dir.mult(1); 
}
 else {
  dir.mult(-1); 
 }
}
void draw() {
  background(0);
  


  for (int i = 0; i < bact.length; i++) {
    // fill(random(255), random(255), random(255));
    
    bact[i].MoveBacteria();
    bact[i].RandomPos();
    bact[i].show();
  }
}

class Bacteria {
  float x_pos;
  float y_pos;
  float radius;
  float ellipseX;
  float ellipseY;
 float x,y,v;
  Bacteria(float x, float y, float radius, color r, color g, color b) {
    this.x = x;
    this.y = y;
 //   x_pos = x; 
  //  y_pos = y;
    this.radius = radius;
  }
  void show() {
     
    ellipseX = mouseX + dir.x;
    ellipseY = mouseY + dir.y;
    pushMatrix();
    translate(x_pos, y_pos);
   // fill(random(255), random(255), random(255));
    ellipse(ellipseX, ellipseY, radius/1.5, radius);


    popMatrix();
  }
  void MoveBacteria() {
     x_pos += (float)(2 * Math.random() - 1);
     y_pos += (float)(2 *  Math.random() -1 );
  }
  void RandomPos() {
    
  }
}
