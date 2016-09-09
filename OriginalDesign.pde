void setup()
{
  size(500,500);
 
}
int press = 0;
int pressCheck = 0;
int textSize = 12;
int moneyMade = 1000;
int num = 5000000;
int reviewScore = 100;
int startingPosition = 100;
String text = "Make a Call of Duty game";
int reviewColorA = 255; //for a button that changes color as more things are added.
int reviewColorB = 0;
void draw()
{
  fill (255);
  noStroke();
  fill(255);
  rect (0, 0, 500, 500);
  fill(0);
   if (pressCheck == 1)
  {
    if (textSize < 32)
    {
      startingPosition= startingPosition - 5;
    }
    if (textSize < 72);
    {
      
    }
    textSize++;
    pressCheck = 0;
  }
  textSize (textSize);
  text (text, startingPosition, 40);
  textSize (18);
  text ("It got rated", 100, 250);
  text (reviewScore, 200, 250);
  text ("/100", 240, 250);
  text ("You've made: $", 100, 270);
  text (moneyMade, 250, 270);
  button();
}
void mousePressed()
{
    pressCheck= 1;
    press = press++;
    reviewScore = reviewScore -2;
    moneyMade = moneyMade * 4;
    if (reviewScore < 80)
    {
     moneyMade = 999999999; 
    }
       if (reviewColorA > 15)
    {
      reviewColorA = reviewColorA - 16;
    }
    if (reviewColorB < 240)
    {
     reviewColorB = reviewColorB + 16;
    }
}
void button()
{
  fill (reviewColorB, reviewColorA, 0);
  ellipse ( 200, 350, 100, 100);
  if (reviewColorB > 230
  )
  {
  fill (0);
  textSize(12);
  text ("TRUE EVIL!", 200, 450);
  }
}
