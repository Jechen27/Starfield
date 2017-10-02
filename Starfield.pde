Particle [] A = new Particle[50];
void setup()
{
  size (300,300);
  for (int i = 1; i<A.length; i++)
  {
  A[i] = new NormalParticle();
  A[i] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 1; i<A.length; i++)
  {
  A[i].move();
  A[i].show();
  }
}
class NormalParticle implements Particle
{
  double nx,ny,na,ns;
  int nc;
	NormalParticle()
  {
    nx = 150;
    ny = 150;
    nc = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    na = Math.random()*2*PI;
    ns = 2;
  }
  public void move()
  {
    nx = cos((float)na)*ns+nx;
    ny = sin((float)na)*ns+ny;
  }
  public void show()
  {
   fill(nc);
   ellipse((float)nx,(float)ny,10,10);
  }
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double ox,oy,oa,os;
  int oc;
  OddballParticle()
  {
    ox = cos((float)oa)*25+150;
    oy = sin((float)oa)*25+150;
    oc = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    oa = Math.random()*2*PI;
    os = 2;
  }
	public void move()
  {
    
  }
  public void show()
  {
    
  }
}
class JumboParticle //uses inheritance
{
	
}