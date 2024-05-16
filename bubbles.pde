PGraphics circles;

int iterations = 0;

// Number of bubbles
int bound = (int)random(150);

void setup() {
  // Dimensions (recommended Soundcloud album cover is 800x800)
  size(800, 800);
  circles = createGraphics(width, height); circles.beginDraw();
  // Black background
  circles.background(0);
  // Random color background
  //circles.background(random(255),random(255),random(255));
  circles.noStroke();
  // circles.fill(255, 100);
  circles.fill(random(255),random(255),random(255)); circles.endDraw();
  noCursor();
} 

void draw() {
  image(circles, 0, 0);
  if (iterations < bound) {
    circles.beginDraw();
    int c = 40 + (int)random(100);
    circles.ellipse(random(740), random(740), c, c);
    circles.endDraw();
    circles.fill(random(255),random(255),random(255));
    iterations = iterations + 1;
  }
}

void mousePressed() {
  save("output.jpg");
}
