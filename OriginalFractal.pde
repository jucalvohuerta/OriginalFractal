float time = 0;

void setup() {
  size(500,500);
  
  //frameRate(15);
//  ellipseMode(CENTER);  

}

void draw() {
  translate(100, 100);
  background(109, 115, 133);
  for (int j = 0; j < 400; j+= 150) {
    for (int i = 0; i < 400; i+= 150) {
      fractal(i, 0, 120);
      fractal(i, j, 120);
  }
  }
  time++;
}

public void fractal(float x, float y, float len) {
  fill(70, 89, 143);
  if (len <= 18)
    ellipse(x,y, len, len);
  else {
    ellipse(x,y, len, len);
    fractal(x+3*cos(2*time*PI/180),y-3*sin(2*time*PI/180),len/1.1);
  }
}
