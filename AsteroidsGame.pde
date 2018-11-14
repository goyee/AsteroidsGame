Spaceship ship;
Star [] sky;
Asteroid [] roidfield;
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

	roidfield = new Asteroid[20];
	for(int i = 0; i < roidfield.length; i++)
	{
	    roidfield[i] = new Asteroid();
	}

}
public void draw() 
{
	background(0);
	ship.show();
	ship.move();
	for(int i = 0; i < sky.length; i++)
    {
      sky[i].show();
    }
    for(int i = 0; i < roidfield.length; i++)
    {
      roidfield[i].show();
      roidfield[i].move();
    }

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
}

