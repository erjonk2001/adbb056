void setup() { 
  size(1000, 800);
}

void draw() {
  background(0);
  noFill();
  stroke(random(0,255), random(0,255), random (0,255)); 
  for (int j = 75; j < 750; j += 75) {
    for (int i = 0; i < 360; i += 10) {
      pushMatrix(); 
      translate(width/2, height/2); 
      rotate(radians(i));
      bezier((mouseX+100)+j, (40), 
        (mouseY-100)+j, (mouseX + 100), 
        (mouseY-100), (mouseX + 100), 
        (mouseX+100), (mouseY + 100));
      popMatrix();
    }
  }
}
