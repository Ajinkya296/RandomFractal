ArrayList<PVector> vertices;
PVector currentPoint;
int startTracing = 0;
int iterations = 0;
void setup()
{
  frameRate(10);
  size(600,600);
  background(30);
  vertices =new ArrayList<PVector>();
  
  vertices.add(new PVector(random(250,400),random(50,100)));
  vertices.add(new PVector(random(70,150),random(350,400)));
  vertices.add(new PVector(random(350,550),random(350,400)));
   for(PVector pv: vertices)
    {
      fill(255,0,0);
      ellipse(pv.x,pv.y,10,10);
      noFill();
    }
}
void mousePressed()
{
  currentPoint =  new PVector(mouseX,mouseY);
  startTracing = 1;
}
void draw()
{
  if(startTracing == 1)
  {
    fill(0,255,255);
    noStroke();
    ellipse(currentPoint.x,currentPoint.y,5,5);
    int rand = (int)random(vertices.size());
    currentPoint.x = (currentPoint.x + vertices.get(rand).x )/2;
    currentPoint.y = (currentPoint.y + vertices.get(rand).y )/2;
    iterations++;

    println(iterations);
  }
}