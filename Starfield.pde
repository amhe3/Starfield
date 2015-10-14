Particle[] galaxy;
PImage b;

void setup()
{
	background(0, 0, 0);
	size(400, 400);
	b = loadImage("earth_from_space1.jpg");
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
		galaxy[i].wrap();
	}
	fill(0,0,0);
	ellipse(200, 200, 75, 75); //space around Earth
	image(b, 176, 176, 50, 50); //Earth

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
	public void wrap()
	{
		if(x >= 400 || x <= 0 || y >= 400 || y <= 0)
		{
			x = 200;
			y = 200;
			angle = Math.random()*360;
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
	public void wrap();
}
class OddballParticle implements Particle
{
	int colors, size;
	double x, y, angle, speed;
	OddballParticle()
	{
		x = 200;
		y = 200;
		angle = Math.random()*3*Math.PI;
		speed = Math.random()*11;
		colors = color(0, 0, 0);
		//size = 7;
	}
	public void wrap()
	{
		if(x >= 400 || x <= 0 || y >= 400 || y <= 0)
		{
			x = 200;
			y = 200;
			angle = Math.random()*3*Math.PI;
		}
	}
	public void move() 
	{
		x = x + Math.random()*11-6;
		y = y + Math.random()*11-6;
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
	}
	public void show()
	{
		fill(255, 255, 255);
		ellipse((float)x, (float)y, 10, 10);
	}
}

