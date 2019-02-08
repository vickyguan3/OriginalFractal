int aps=50;
int e=40;

public void setup ()
{
	size(700,700);
	frameRate(50);	
}
public void draw()
{

background(0);
fractal(5,e,10,10,200);
for (int i=0; i<9;i++)
{

}
}
public void fractal ( double r, double dRadians, double w,double h, int m)
{
if(m<=50){

double x= r*Math.cos(dRadians);
double y=r* Math.sin(dRadians);

if(aps<=100)
{
	aps++;
}
else
{
	t--;
}
fill(255);
ellipse(140+(int)x,150+(int)y,(int)w,(int)h);
}
else
{
noFill();
double x=r*Math.cos(dRadians);
double y=r*Math.sin(dRadians);
if(aps<=50)
{
	aps++;
}
else
{
	aps--;
}
fill(254,121,126,aps);
noStroke();
ellipse(400+(int)x,350+(int)y,(int)w,(int)h);
fractal(r+5,dRadians-9,w+2,h+2, m-1);
}
}


