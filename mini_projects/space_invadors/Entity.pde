class Entity{
  float x, y;
  float hSize, vSize;
  color bodyColor;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  void display(){
    noStroke();
    fill(bodyColor);
    rect(x, y, hSize, vSize);
    
    for(Bullet b : bullets){
      b.display();
    }
  }
  
  void fire(){
    bullets.add(new Bullet(x + hSize / 2, y, -5, bodyColor));
  }
  
  void moveBullets(){
    for(Bullet b : bullets){
      b.move();
    }
  }
}