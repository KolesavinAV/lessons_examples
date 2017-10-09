class Column{
  float x, y;
  int charLength;
  color c;
  char[] chars;
  int charSize;
  int maxSymb = 400, minSymb = 256;
  
  Column(int charSize, int xOffset){
    this.charSize = charSize;
    c = #00E501;
    charLength = int(random(6, 14));
    chars = new char[charLength];
    
    for(int i = 0; i < chars.length; i++){
      chars[i] = (char)int(random(minSymb, maxSymb));
    }
    
    y = random(-charSize * 25, charSize * 10);
    x = xOffset;
  }
  
  void diplay(){
    fill(c);
    textSize(charSize);
    textAlign(CENTER);
    float newY = y;
    for(int i = 0; i < chars.length; i++){
      text(chars[i], x, newY);
      chars[i] = (char)int(random(minSymb, maxSymb));
      newY += charSize;
      if(newY > height){
        newY = 0;
      }
    }
    y += charSize;
    if(y > height){
      y = 0;
    }
  }
}