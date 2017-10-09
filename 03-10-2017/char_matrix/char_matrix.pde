//Массив столбцов с симфолами (массив объектов класса Column)
Column[] cols;

void setup() {
  size(600, 400);
  background(30);
  int colCount = 30;
  int charSize = int(width/colCount);

  cols = new Column[colCount];
  for (int i = 0; i < colCount; i++) {
    cols[i] = new Column(charSize, charSize * i + charSize / 2);
  }
  
  frameRate(8);
}

void draw() {
  fill(30, 130);
  rect(0,0, width, height);
  for (Column col : cols) {
    col.diplay();
  }
}