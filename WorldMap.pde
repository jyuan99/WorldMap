/* @pjs preload = "WorldMap.png"; */

PImage img;
float min = 2000;
float tempx = 132;
float tempy = 203;
float newx, newy;
boolean run = false;
int index = -1;

void setup() {
  background(255);
  img = loadImage("WorldMap.png");
  size(1000, 529);
  background(img);
  delay(500);
}

void draw() {
  if (mousePressed){ //used to determine coordinates of points
    print(mouseX + " " + mouseY + "\n");
  }
  fill(0);
  ellipse(132, 203, 5, 5);
  
  for (int i = 0; i < locations.length; i++){
    locations[i].draw();
//    print(locations[i].x + "\t" + locations[i].y + "\n");
    
    if (dist(tempx, tempy, locations[i].x, locations[i].y) < min && dist(tempx, tempy, locations[i].x, locations[i].y) > 0 && !locations[i].visited){
      min = dist(tempx, tempy, locations[i].x, locations[i].y);
      newx = locations[i].x;
      newy = locations[i].y;
      index = i;
      run = true;
    }
//    print("DISTANCE: " + dist(tempx, tempy, locations[i].x, locations[i].y) + " " + locations[i].x + " " + locations[i].y + "\n");
  }
  
  if (run == true) {
    print(run);
    stroke(160);
    strokeWeight(1);
    strokeJoin(ROUND);
    line(tempx, tempy, newx, newy);
    print("line drawn from " + tempx, tempy, newx, newy + "\n");
    locations[index].visited = true;
    tempx = newx;
    tempy = newy;
    min = 2000;
    run = false;
  }
}

class city{
  public float x, y;
  public boolean visited;
  
  city(int xtemp, int ytemp){
    x = xtemp;
    y = ytemp;
    visited = false;
  }
  city(){
    x = 0;
    y = 0;
  }
  void draw(){
    noStroke();
    fill(#ff0000);
    ellipse(x, y, 5, 5);
  }
}

city[] locations = {
//  new city(132, 203),
//  new city(131, 199), 
  new city(270, 190), 
  new city(248, 238), 
  new city(799, 218), 
  new city(788, 246), 
  new city(753, 279),
  new city(479, 164),
  new city(275, 184),
  new city(243, 233),
  new city(257, 208),
  new city(225, 191)
};
