//Размер циферблата
float clockSize;

void setup(){
  size(600, 400);
  background(30);
  
  //Диаметр циферблата будет зависеть от высоты окта - отступы от него
  clockSize = height - 50;
}

void draw(){
  background(30);
  fill(250);
  //Рисование циферблата
  ellipse(width / 2, height / 2, clockSize, clockSize);
  
  //Цикл перебора углов циферблата
  //Шаг цикла равен углу в градусах, соответствующий отдной минуте/секунде
  for(int ang = 0; ang < 360; ang += 360 / 60){
    //Вычисление координат точки деления
    float x = cos(radians(ang)) * clockSize / 2 * 0.9 + width / 2;
    float y = sin(radians(ang)) * clockSize / 2 * 0.9 + height / 2;
    noStroke();
    fill(0);
    //Выделение жирным делений, кратных 5 минутам
    if(ang % 15 == 0){
      ellipse(x, y, 6, 6);
    } else{
      ellipse(x, y, 3, 3);
    }
  }
  
  stroke(0);
  //Рисование секундной стрелки
  println(second());
  strokeWeight(1);
  //Угол в градусах, равный углу одной секунды * кол-во секунд
  float secAng = second() * 360 / 60;
  float secX = cos(radians(secAng) - PI / 2) * clockSize / 2 * 0.95 + width / 2;
  float secY = sin(radians(secAng) - PI / 2) * clockSize / 2 * 0.95 + height / 2;
  line(width / 2, height / 2, secX, secY);
  
  //Рисование минутной стрелки
  strokeWeight(2);
  //Угол в градусах, равный углу одной минуты * кол-во минут
  float minAng = minute() * 360 / 60;
  float minX = cos(radians(minAng) - PI / 2) * clockSize / 2 * 0.8 + width / 2;
  float minY = sin(radians(minAng) - PI / 2) * clockSize / 2 * 0.8 + height / 2;
  line(width / 2, height / 2, minX, minY);
  
  //Рисование часовой стрелки
  strokeWeight(3);
  //Угол в градусах, равный углу одного часа * кол-во часов
  float hAng = hour() * 360 / 12;
  float hX = cos(radians(hAng) - PI / 2) * clockSize / 2 * 0.7 + width / 2;
  float hY = sin(radians(hAng) - PI / 2) * clockSize / 2 * 0.7 + height / 2;
  line(width / 2, height / 2, hX, hY);
  
  //radians(угол) * PI / 2 - сдвиг на четверть окружности назад
}