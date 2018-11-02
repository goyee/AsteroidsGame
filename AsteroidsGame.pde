Spaceship ship;
Spaceship2 ship2;
Star [] sky;
public void setup() 
{
	size(500,500);
	frameRate(60);
	ship = new Spaceship();
	ship2 = new Spaceship2();

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
	ship2.show();
	ship2.move();
}
public void keyPressed()
{
	//Ship controls
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
    //Ship2 controls
    if (key == 'i')
	{
		ship2.accelerate(.2);
	}
	if (key == 'j')
	{
		ship2.turn(-10);
	}
	if (key == 'k')
	{
		ship2.accelerate(-.5);
	}
	if (key == 'l')
	{
		ship2.turn(10);
	}
	if (key == 'o')
	{
		ship2.setX((int)(Math.random()*500));
    	ship2.setY((int)(Math.random()*500));
    	ship2.setDirectionX(0);
    	ship2.setDirectionY(0);
    	ship2.setPointDirection((int)(Math.random()*360));
	}
}

