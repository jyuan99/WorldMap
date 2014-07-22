/* @pjs preload = "WorldMap.png"; */

PImage img1;

void setup() {
  background(255);
  img1 = loadImage("WorldMap.png");
  size(2000, 1057);
  background(img1);
}

void draw() {
}
