Spaceship ship;
Star [] sky;
public void setup() 
{
	size(500,500);
	frameRate(60);
	ship = new Spaceship();
	sky = new Star[100];

	for(int i = 0; i < sky.length; i++)
	{
	    sky[i] = new Star();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < sky.length; i++)
    {
      sky[i].show();
    }
	ship.show();
	ship.move();
}
public void keyPressed()
{
	if (key == 'w')
	{
		ship.accelerate(.2);
	}
	if (key == 'a')
	{
		ship.turn(-10);
	}
	if (key == 's')
	{
		ship.accelerate(-.5);
	}
	if (key == 'd')
	{
		ship.turn(10);
	}
	if (key == 'e')
	{
		ship.setX((int)(Math.random()*500));
    	ship.setY((int)(Math.random()*500));
    	ship.setDirectionX(0);
    	ship.setDirectionY(0);
    	ship.setPointDirection((int)(Math.random()*360));
	}
}

