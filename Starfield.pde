Particle [] A = new Particle[50];
void setup()
{
  size (300,300);
  for (int i = 1; i<A.length; i++)
  {
  A[i] = new NormalParticle();
  }
  A[0] = new OddballParticle();
  A[1] = new JumboParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i<A.length; i++)
  {
  A[i].move();
  A[i].show();
  }
}
class NormalParticle implements Particle
{
  double nx,ny,na,ns,nh;
  int nc;
	NormalParticle()
  {
    nx = 150;
    ny = 150;
    nc = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    na = Math.random()*2*PI;
    ns = Math.random()*5+1;
  }
  public void move()
  {
    na = na - 0.03;
    nx = cos((float)na)*ns+nx;
    ny = sin((float)na)*ns+ny;
    nx = nx+1;
    if (nx > 300)
    nx = 0;
    if (ny > 300)
    ny = 0;
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
    oa = PI;
    ox = cos((float)oa)*25+150;
    oy = sin((float)oa)*25+150;
    oc = color(255,0,0);//color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    os = 2;
  }
	public void move()
  {
    oa = oa +0.01;
    ox = cos(2*PI*(float)oa)*50+150;
    oy = sin(2*PI*(float)oa)*50+150;
  }
  public void show()
  {
    fill(oc);
    ellipse((float)ox,(float)oy,15,15);
  }
}
class JumboParticle extends NormalParticle
{
	public void show()
  {
   fill(nc);
   ellipse((float)nx,(float)ny,25,25);
  }
}