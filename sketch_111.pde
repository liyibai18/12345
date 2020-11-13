int grid=50;
float angle;
int mX=80,mY=135;

void setup(){
   size(960,960,P3D);
   surface.setLocation(957,0);
  rectMode(CENTER);
}

void draw(){
  background(235,228,243);
  noStroke();
  
    for(int x=mX+grid;x<=width-mX;x+=grid*2)
 {
    for(int y=mY+grid;y<=height-mY;y+=grid*2)
    {pushMatrix();
      translate(x,y);
      
      pushMatrix();
      fill(250,235,215);
      translate(-grid/2,-grid/2);
      rotateX(radians(angle));
      rotateY(radians(angle));
      rect(0,0,grid,grid);
      popMatrix();
      
      pushMatrix();
      fill(235,243,255);
      translate(+grid/2,-grid/2);
      rotateY(-radians(angle));
      rotateX(radians(angle));
      rect(0,0,grid,grid);
      popMatrix();
      
      pushMatrix();
      fill(255,235,246);
      translate(-grid/2,+grid/2);
      rotateY(radians(angle));
      rotateX(radians(angle));
      rect(0,0,grid,grid);
      popMatrix();
      
      pushMatrix();
      fill(232,245,243);
      translate(+grid/2,+grid/2);
      rotateX(radians(angle));
      rotateY(-radians(angle));
      rect(0,0,grid,grid);
      popMatrix();
      
   popMatrix();
    }
  }
    fill(255,255,255,96);
    translate(width/2,height/2);
    rotate(radians(angle));
    triangle(0,0,500,0,250,400);
    fill(242,233,245);
    rotate(radians(angle*2));
   triangle(0,0,0,650,200,400);
    
     translate(0,0);
     rotate(radians(angle*1.2));
      stroke(0,30);
    line(0,0,600,400);
    
    fill(235,246,235,98);
    noStroke();
    translate(0,0);
    rotate(radians(angle));
    rect(0,0,500,400);
    angle+=0.5;
}
