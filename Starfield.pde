

void setup()
{
	size(400, 400);
	Particle[] galaxy = new Particle[100];
}
void draw()
{
	Particle[] galaxy = new NormalParticle;
	Particle[] galaxy = new OddballParticle;
	Particle[] galaxy = new JumboParticle;
}
class NormalParticle
{
	int colors;
	double x, y, angle, speed;
	NormalParticle()
	{
		x = 200;
		y = 200;
		colors = color((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
		angle = 100;
		speed = 1;
	}
	void move()
	{
		x = cos(angle)*speed+x;
		y = cos(angle)*speed+y;
	}
	
}
interface Particle
{
	//your code here
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

