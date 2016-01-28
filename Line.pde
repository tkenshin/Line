void setup() {
  size(300, 300);
  theta = 0;
  a1 = random(0.1,1.5);
  a2 = random(0.1,1.5);
  a3 = random(0.1,1.5);
}

float theta;
float a1, a2, a3;

void f(float cx, float cy, float theta, float a) {
  float r = 100;
  float x = r*cos(theta) + cx;
  float y = r*sin(a*theta) + cy;
  line(cx, cy, x, y);
}

void draw() {
  background(255);
  f(width/2, height/2, theta, a1);
  theta += 0.1;
  f(width/3, height/3, theta, a2);
  theta += 0.1;
  f(2*width/3, 2*height/3, theta, a3);
  theta += 0.1;
}