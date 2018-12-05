class Asteroid extends Floater
{
	private int aRotate;

	public void setX(int x){myCenterX = x;}

	public int getX(){return (int)myCenterX;}

	public void setY(int y){myCenterY = y;}
		 
	public int getY(){return (int)myCenterY;}
		   
	public void setDirectionX(double x){myDirectionX = x;} 
		
	public double getDirectionX(){return (double)myDirectionX;}   
		
	public void setDirectionY(double y){myDirectionY = y;}
		  
	public double getDirectionY(){return (double)myDirectionY;}
		
	public void setPointDirection(int degrees){myPointDirection = degrees;}
		
	public double getPointDirection(){return (int)myPointDirection;}

	public Asteroid()
	{	
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -10;
		yCorners[0] = -10;
		xCorners[1] = -7;
		yCorners[1] = -7;
		xCorners[2] = 0;
		yCorners[2] = -10;
		xCorners[3] = 7;
		yCorners[3] = -7;
		xCorners[4] = 10;
		yCorners[4] = 0;
		xCorners[5] = 7;
		yCorners[5] = 7;
		xCorners[6] = 0;
		yCorners[6] = 10;
		xCorners[7] = -7;
		yCorners[7] = 7;
		myColor = color(95,95,95);
		myCenterX = (int)(Math.random()*500);
		myCenterY = (int)(Math.random()*500);
		myDirectionX = (double)(Math.random()*1.5)-.75;
		myDirectionY = (double)(Math.random()*1.5)-.75;
		aRotate = (int)((Math.random()*9)-4);
	}
	public void move()
    {
    	turn(aRotate);
     	super.move();	
    }
}
