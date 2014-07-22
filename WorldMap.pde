/* @pjs preload = "WorldMap.png"; */

PImage img1;

void setup() {
  background(255);
  img1 = loadImage("WorldMap.png");
  size(img1.width/3, img1.height/3);
  background(img1);
}

void draw() {
}
