private double fractionLength = .8; 
private int smallestBranch = 5; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
}
public void draw() 
{ 
  background(0,0,50);
  stroke(255,182,193);   
  //drawBranches(??,??,??,??);  //will add later 
  line(320,480,320,380);
  drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{ 
  strokeWeight(2);
  //pink color
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  //double angle3 = angle * branchAngle;
  branchLength= branchLength *fractionLength;
  int endX1= (int)(branchLength*Math.cos(angle1)+ x);
  int endY1= (int)(branchLength*Math.sin(angle1)+ y);
  int endX2= (int)(branchLength*Math.cos(angle2)+ x);
  int endY2= (int)(branchLength*Math.sin(angle2)+ y);
  //int endX3= (int)(branchLength*Math.tan(angle3)+ x);
  //int endY3= (int)(branchLength*Math.tan(angle3)+ y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  //line(x,y,endX3,endY3);
  if(branchLength<=smallestBranch){
  //light brown color
  line(320,480,320,380);
  }
  else
  {
   //drawBranches(endX3,endY3,branchLength,angle3);
   drawBranches(endX1,endY1,branchLength,angle1);
   drawBranches(endX2,endY2,branchLength,angle2);
  }
} 
