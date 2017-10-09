class Bullet{
  float x, y;
  color bodyColor;
  float bulletSize = 10;
  float speed;
  
  Bullet(float x, float y, float s, color bC){
    this.x = x;
    this.y = y;
    bodyColor = bC;
    speed = s;
  }
  
  void display(){
    stroke(bodyColor);
    strokeWeight(3);
    strokeCap(ROUND);
    
    line(x, y, x, y + bulletSize);
  }
  
  void move(){
    y += speed;
  }
}