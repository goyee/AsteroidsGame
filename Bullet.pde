class Bullet extends Floater
{
  public void setX(int x) {myCenterX = x;} 
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x) {myDirectionX = x;} 
  public double getDirectionX() {return myDirectionX;}  
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}

  public Bullet(Spaceship cannon)
  {
  	myCenterX = cannon.getX();
  	myCenterY = cannon.getY();
  	myPointDirection = cannon.getPointDirection();
  	double dRadians = myPointDirection*(Math.PI/180);
  	myDirectionX = 5 * Math.cos(dRadians) + cannon.getDirectionX();
  	myDirectionY = 5 * Math.sin(dRadians) + cannon.getDirectionY();

  }

  public void show()
  {
  	stroke(180, 244, 132);
  	fill(22, 196, 0);
  	ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  public void move()
  {
  	myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}