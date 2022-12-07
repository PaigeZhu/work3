PImage i;

void setup() {
  size(384, 510);
  i=loadImage("mm.jpg");
  background(255);
  i.resize(384, 510);
  fill(20, 12, 125);
  textSize(32);
  text("move your mouse", 40, 120);
}

void draw() {

  for (int y=0; y<10; y++) {
    for (int x=0; x<10; x++) {
      float n=random(0, 384);
      float s=random(0, 510);
      float z=abs(mouseX-pmouseX);
      color c = i.get(int(n), int(s));
      fill(c);
      noStroke();
      ellipse(n, s, z, z);
    }
  }
}
