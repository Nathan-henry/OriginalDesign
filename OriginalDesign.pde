void setup()
{
  size(500,500);
 
}
int press = 0;
int pressCheck = 0;
int textSize = 12;
int moneyMade = 0;
int reviewScore = 0;
int startingPosition = 100;
String text = "Make a Call of Duty game";
int review color; //for a button that changes color as more things are added.
void draw()
{
  fill (255);
  numCalculation();
   if (pressCheck == 1)
  {
    if (textSize < 32)
    {
      textSize++;
      startingPosition= startingPosition - 5;
    }
    pressCheck = 0;
  }
  textSize (textSize);
  text (text, startingPosition, 40);
}
void mousePressed()
{
    pressCheck= 1;
    press = press++;
}
void numCalculation()
{
  moneyMade = press * 4;
  reviewScore = press *-2;
  reviewScore = reviewScore +100;
}
