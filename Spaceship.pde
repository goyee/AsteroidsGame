class Spaceship extends Floater  
{ 
	public Spaceship()
	{	
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8;
		yCorners[0] = -8;
		xCorners[1] = 16;
		yCorners[1] = 0;
		xCorners[2] = -8;
		yCorners[2] = 8;
		xCorners[3] = -2;
		yCorners[3] = 0;

		public void setX(int x){myCenterX = x;}

		public int getX(){return(int)myCenterX;}

		public void setY(int y){myCenterY = y;}
		 
		public int getY(){return(int)myCenterY;}
		   
		public void setDirectionX(double x){myDirectionX = x;} 
		
		public double getDirectionX(){return(double)myDirectionX;}   
		
		public void setDirectionY(double y){myDirectionY = y;}
		  
		public double getDirectionY(){return(double)myDirectionY;}
		
		public void setPointDirection(int degrees){myPointDirection = 0;}
		
		public double getPointDirection(){return(int)myPointDirection;}
		
	}
}
