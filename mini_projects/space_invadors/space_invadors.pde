Player p;
Enemy e = new Enemy();

void setup(){
  size(600, 400);
  background(30);
  float hSize = width / 15;
  float vSize = height / 15;
  p = new Player(20, height - 50, hSize, vSize);
}

void draw(){
  background(30);
  p.display();
  p.moveBullets();
  p.move();
}

void keyPressed(){
  if(keyCode == LEFT){
    p.moveLeft = true;
  }
  if(keyCode == RIGHT){
    p.moveRight = true;
  }
  if(key == ' '){
    p.fire();
  }
}

void keyReleased(){
  if(keyCode == LEFT){
    p.moveLeft = false;
  }
  if(keyCode == RIGHT){
    p.moveRight = false;
  }
}