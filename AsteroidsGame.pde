Spaceship ship;
Star [] sky;
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();
ArrayList <Bullet> bob = new ArrayList <Bullet>();

public void setup() 
{
	size(500,500);
	ship = new Spaceship();
	sky = new Star[100];
	for(int i = 0; i < sky.length; i++)
	{
	    sky[i] = new Star();
	}

	for(int i = 0; i < 20; i++){
      	ast.add(new Asteroid());
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

    for(int i = 0; i < ast.size(); i++)
    {
    	ast.get(i).move();
    	ast.get(i).show();
	}

	for(int i = 0; i < ast.size(); i++){
		if(dist(ship.getX(), ship.getY(), ast.get(i).getX(), ast.get(i).getY()) < 20){
      		ast.remove(i);
    	}
    }
    for (int i = 0; i < bob.size(); i++){
    	bob.get(i).show();
    	bob.get(i).move();
  	}
 	for (int i = 0; i < bob.size(); i++){
    	for (int j = 0; j < ast.size(); j++){
      		if(dist(bob.get(i).getX(), bob.get(i).getY(), ast.get(j).getX(), ast.get(j).getY()) < 20){
        		ast.remove(j);
      		}
    	}
	}
}

public void keyPressed() {
	//Ship controls
	if (key == 'w')
	{
		ship.accelerate(.5);
	}
	if (key == 'a')
	{
		ship.turn(-20);
	}
	if (key == 's')
	{
		ship.accelerate(-.5);
	}
	if (key == 'd')
	{
		ship.turn(20);
	}
	if (key == ' ')
  	{
   		bob.add(new Bullet(ship));
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

