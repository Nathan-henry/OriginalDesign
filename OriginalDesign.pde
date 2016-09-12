void setup()
{
  size(500,500);
 
}
int textLarge = 12;
int moneyMade = 1000;
int reviewScore = 100;
int startingPosition = 100;
String sentence = "Make a Call of Duty game";
int reviewColorA = 255; //green value of the button
int reviewColorB = 0; // red value of the button
int cpx1; //named for control points
int cpy1;
void draw()
{
  fill (255);
  rect (0,0, 500, 500);
  noFill()
  fill (0);
  noStroke();
  if (textSize < 32)
 {
    startingPosition= startingPosition - 5;
  }
  textLarge++;
  textSize (textLarge);
  text (sentence, startingPosition, 40);
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
    cpx1 = reviewColorA + 500;
    cpy1 = reviewColorB+ 500;
}
void button()
{
  fill (reviewColorB, reviewColorA, 0);
  ellipse ( 200, 350, 100, 100);
  snake();
  if (reviewColorB > 230)
  {
  fill (0);
  textSize(12);
  ellipse (175, 325, 20, 20);
  ellipse (225, 325, 20, 20);
  stroke(15);
  noFill();
  arc (200, 370, 40, 40, PI, TWO_PI);
  text ("TRUE EVIL!", 200, 450);
  }
}
void snake() //didn't turn out to be a snake
{
  textSize(18);
  text("happiness of consumer", 250, 200);
  bezier (400, 200, cpx1, cpy1, 550, 400, 400, 400);
  line (400, 200, 400, 400);
}
