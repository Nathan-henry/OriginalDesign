void setup()
{
  size(100,100);
}
void draw()
{
  int press = 0;
  int pressCheck = 0;
  int textSize = 12;
  int moneyMade = 0;
  int reviewScore = 0;
  fill (255)
  string text = "Make a call of Duty game"
  numCalculation();
  button();
  textSize (textSize)
  text (text, 20, 10)
}
void button()
{
  if (pressCheck = 1);
  {
    textSize++;
    pressCheck = 0;
  }
}
void numCalculaton()
{
  moneyMade = press * 4;
  reviewScore = press *-2;
  reviewScore = reviewScore +100
}
void mousePressed()
{
  pressCheck= 1;
  press = press++;
}

