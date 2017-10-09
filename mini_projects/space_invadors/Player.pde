class Player extends Entity{
  boolean moveLeft = false, moveRight = false;
  float speed = 3;
  Player(float x, float y, float hSize, float vSize){
    this.x = x;
    this.y = y;
    this.hSize = hSize;
    this.vSize = vSize;
    
    this.bodyColor = color(0, 255, 0);
  }
  
  void move(){
    if(moveLeft && !moveRight){
      x -= speed;
    }
    if(!moveLeft && moveRight){
      x += speed;
    }
  }
}