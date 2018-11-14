class Star 
{
	int starSize;
	int starX;
	int starY;

	public Star()
	{
		starSize = (int)(Math.random()*8);
		starX = (int)(Math.random()*500);
		starY = (int)(Math.random()*500);
	}

	public void show()
	{
		noStroke();
		fill(255,255,255);
		ellipse(starX,starY,starSize,starSize);
	}
}