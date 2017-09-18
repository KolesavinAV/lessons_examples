float gridSize = 40;
float bSize = 4;

void setup(){
  size(400, 400);
  background(30);
  stroke(0, 30);
  fill(255);
}

void draw(){
  for(int x = 0; x < width; x += gridSize){
    float newSize = 0;
    for(int y = 0; y < height; y += gridSize){
      float size = bSize + newSize;
      ellipse(x, y, size, size);
      newSize += 2;
    }
    bSize += 2;
  }
  noLoop();
}