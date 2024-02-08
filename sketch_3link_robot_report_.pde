float baseH = 20;

float arm1W = 10;
float arm1D = 10;
float arm1L = 40;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 30;

float arm4W = 30;
float arm4D = 30;
float arm4L = 5;


float armW1 = 10;
float armW2 = 10;
float armW3 = 5;

float sphereX = 50;
float sphereY = 100;
float sphereZ = 0;
float sphereSize = 6;

float x1;
float y1;
float z1;




float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;

float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(160, 160, 160, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'o'){
      angle0 = angle0 + dif;
      
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
      
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
      
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
      
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
      
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
      
    }
    if(key == 'g'){
      angle3 = angle3 + dif;
      
      
    }
    if(key == 'G'){
      angle3 = angle3 - dif;
      
      
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
  }
  
  pushMatrix();
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2);
  fill(150);
  box(20,20,baseH);
  translate(0,0,baseH*4/5);
  fill(100);
  sphere(6);
  
  
  //1st link
  rotateX(radians(angle1));
  translate(0,0,arm1L*3/5);
  fill(150);
  box(arm1W,arm1D,arm1L);
  translate(0,0,arm1L*7/11);
  fill(100);
  sphere(6);
  
  
  //2nd link
  //go to 2nd joint
  translate(0,0,3);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,0,arm2L*3/5);
  fill(150);
  box(arm2W,arm2D,arm2L);
  translate(0,0,arm2L*9/13);
  fill(100);
  sphere(6);
  
  
  //3rd linka
  // go to 3rd joint
  translate(0, 0, 3);
  rotateX(radians(angle3));
  translate(0, 0, arm2L/10);
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(150);
  box(arm3W,arm3D,arm3L);
  translate(0, 0, arm3L/2);
  fill(140);
  box(arm4W,arm4D,arm4L);
    translate(x1,y1,z1);
  
  
  popMatrix();
  translate(sphereX, sphereY, sphereZ);
 if (dist(x1, y1, z1, sphereX, sphereY, sphereZ) > sphereSize*10) {
    fill(200);
    noStroke();
    sphere(sphereSize);
    
    
  }
}
