Particle[] galaxy;

void setup()
{
	background(0, 0, 0);
	size(400, 400);
	galaxy = new Particle[300];
	for(int i = 2; i < galaxy.length; i++)
	{
		galaxy[i] = new NormalParticle();
	}
	galaxy[0] = new OddballParticle();
	galaxy[1] = new JumboParticle();
}
void draw()
{
	background(0, 0, 0);
	for(int i = 0; i < galaxy.length; i++)
	{
		galaxy[i].move();
		galaxy[i].show();
	}
}
class NormalParticle implements Particle
{
	int colors, size;
	double x, y, angle, speed;
	NormalParticle()
	{
		x = 200;
		y = 200;
		colors = color((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
		angle = Math.random()*360;
		speed = Math.random()*3+1;
		//size = 5;
	}
	void wrap()
	{
		if(x == 300 || x == 300 || y == 300 || y == 300)
		{
			x = 200;
			y = 200;
		}
	}
	public void move()
	{
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
	}
	public void show()
	{
		fill(colors);
		ellipse((float)x, (float)y, 5, 5);
	}
	
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	int colors, size;
	double x, y, angle, speed;
	OddballParticle()
	{
		x = 200;
		y = 200;
		angle = 150;
		speed = 5;
		colors = color(0, 0, 0);
		//size = 7;
	}
	public void move()
	{
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
	}
	public void show()
	{
		fill(255, 255, 0);
		rect((float)x-4, (float)y-4, 9, 9);
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		size = 10;
		speed = 1;
	}
	public void move()
	{
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
	}
	public void show()
	{
		fill(255, 255, 255);
		ellipse((float)x, (float)y, 10, 10);
	}
}

