//Объявление трех объектов класса 
Ball b, b2, b3;

void setup() {
  size(700, 400);
  background(51);
  //Создание трех объектов класса Ball
  b = new Ball();
  b2 = new Ball();
  b3 = new Ball();
}

void draw() {
  background(51);
  // Перемещение объекта b класса Ball
  b.move();
  //Отображение объекта b класса Ball
  b.display();

  b2.move();
  b2.display();

  b3.move();
  b3.display();
}

//Объеквление класса  Ball
class Ball {
  //Объявление и инициализаци полей класса Ball
  //Поля: size, xSpeed, ySpeed, x, y, c
  float size = 40, xSpeed = 5, ySpeed =5;
  float x = random(size, width - size), 
    y = random(size, height - size);
  color c = color(0, 220, 30);

  //Функция в которой реализована логика перемещения мяча
  void move() {
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
  void display() {
    noStroke();
    fill(c);
    //Рисование круга, используя параметры из полей класса
    ellipse(x, y, size, size);
  }
}