NormalParticle [] A;
void setup()
{
  size (300,300);
  A = new NormalParticle[50];
  for (int i = 1; i<A.length; i++)
  A[i] = new NormalParticle();
}
void draw()
{
  for (int i = 1; i<A.length; i++)
  A[i].move();
  A[i].show();
}
class NormalParticle
{
  double px,py,pa,ps;
  int pc;
	NormalParticle()
  {
    px = 150;
    py = 150;
    pc = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    pa = Math.random()*2*PI;
    ps = 8;
  }
  void move()
  {
    px = cos((float)pa)*ps+px;
    py = sin((float)pa)*ps+py;
  }
  void show()
  {
   fill(pc);
   ellipse((float)px,(float)py,10,10);
  }
}
//interface Particle
//{
	
//}
//class OddballParticle //uses an interface
//{
	
//}
//class JumboParticle //uses inheritance
//{
	
//}