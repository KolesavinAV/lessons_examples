//Объявление трех объектов класса 
Ball ball, ball2, ball3;

void setup(){
  size(700, 400);
  background(51);
  
  //Создание трех объектов класса Ball
  ball = new Ball(20, color(255, 0, 0));
  ball2 = new Ball(70, color(0, 0, 255));
  ball3 = new Ball(70, color(0, 255, 0));
}

void draw(){
  background(51);
  ball.move();
  ball.display();
  
  ball2.move();
  ball2.display();
  
  ball2.move();
  ball2.display();
}

//Объявление класса Ball
class Ball{
  //Объявление полей класса Ball
  float size, xSpeed, ySpeed;
  float x, y;
  color c;
  
  //Объявление конструктора класса Ball
  //Данный конструктор принимает 2 параметра
  //size - размер шара и col - цвет шара
  Ball(float size, color col){
    //this - это указатель на текущий класс
    //Полю size класса Ball присваивается значение параметра size
    this.size = size;
    
    //Инициализация полей
    xSpeed = ySpeed = 6;
    x = random(size, width - size);
    y = random(size, height - size);
    
    //Полю с класса Ball присваивается значение параметра col
    c = col;
    
    println("Объект создан!");
  }
  
  //Функция в которой реализована логика перемещения мяча
  void move(){
    //Условие осткакивания мяча от левой и правой стороны окна
    if (x - size / 2 < 0 || x + size / 2 > width) {
      xSpeed *= -1;
    }

    //Условие отскакивания мяча от верхней и нижней стороны окна
    if (y - size / 2 < 0 || y + size / 2 > height) {
      ySpeed *= -1;
    }
    
    //Изменение позиции мяча на значение скорости по вертикали и горизонтали
    x += xSpeed;
    y += ySpeed;
  }
  
  //Функция отображения мяча на экране
  void display(){
    noStroke();
    fill(c);
    //Рисование круга, используя параметры из полей класса
    ellipse(x, y, size, size);
  }
  
  void changeColor(color c){
    this.c = c;
  }
}