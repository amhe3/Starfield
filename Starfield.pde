Particle[] galaxy;

void setup()
{
	size(400, 400);
	galaxy = new Particle[300];
	for(int i = 0; i < galaxy.length; i++)
	{
		galaxy[i] = new NormalParticle();
	}
	galaxy[0] = new OddballParticle();
	//galaxy[] = new JumboParticle();
}
void draw()
{
	for(int i = 0; i < galaxy.length; i++)
	{
		galaxy[i].move;
		galaxy[i].show;
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
		angle = 100;
		speed = 1;
		size = 5;
	}
	public void move()
	{
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
	}
	public void show()
	{
		fill(colors);
		ellipse((float)x, (float)y, size, size);
	}
	
}
interface Particle
{
	public void show;
	public void move;
}
class OddballParticle implements Particle
{
	int colors, size;
	double x, y, angle, speed;
	OddballParticle()
	{
		x = 300;
		y = 300;
		angle = 150;
		speed = 5;
		colors = color(0, 0, 0);
		size = 7;
	}
	public void move()
	{
		x = Math.cos(angle)*speed+x;
		y = Math.sin(angle)*speed+y;
	}
	public void show()
	{
		fill(colors);
		rect((float)x-3, (float)y-3, size, size);
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		size = 10;
	}
}

