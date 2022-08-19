/**
* Muhtasim Khan
* Date: 2022/03/04
* Filename: Group8RocketAnimation
* Description: This program animates a rocket taking off, traveling through space and then landing at the end of the scene. 
**/

// set the variables for images 
PImage img1, img2, img3, img4,img5, img6, img7, img8, img9;
// set the veriables for the coordinates
int y=200;
int x = 0;
int state =0;
int waitTime;
int startTime;
int i=10;
int y1 = 0;
int x1 = 0;
int x2 = 0;
int y2 = 0;
int x3 = 0;
PFont f;
//textFont(f, 140);


void setup() 
{
// load the images from image 1 to 9
  img1 = loadImage("launch pad.jpg");
  img2 = loadImage("rocket.png");
  img3 = loadImage("space.jpg");
  img4 = loadImage("rocketsideway.png");
  img5 = loadImage("space-galaxy.jpg");
  img6 = loadImage("planet.jpg");
  img7 = loadImage("rocket on a planet.png");
  img8 = loadImage("car.png");
  img9 = loadImage("city.jpg");
// set the space for the countdown  
  textAlign(CENTER, CENTER);
  size(600, 400);
  f = createFont("mono", 48);
  frameRate(10);   
  startTime = 0;
  waitTime = 1000;
  background(180);
}
// void draw() for infinite loops 
void draw()
  {
  // set the first scenery by setting state to 0
//-----------------------------------------------------------  
  if (state == 0)
  {
    if (x3 != 600)
    {
     //load the background city image and the car image 
    // move the car left to right 
    x3 = x3 + 6;  
    image(img9,0,0,600,400);
    image(img8,x3,300, 200, 200); 
    }
    
    else 
    {
    // when the car reaches the end change state to 1
      state = 1;
    }
  }
// set the second scenery by setting state to 1
//-----------------------------------------------------------  

  else if (state==1)
  {


    if (i>-1)
    {
    // start the countdown with gray background
      textFont(f, 140);
      background(180);
      text(i, width/2, height/2);
      delay(1000);
      i=i-1;
    }
    else if (i<=0)
    {
    // when timer reaches 0 change state to 2
      background(180);
      state=2;
    }
  }
// set the third scenery by setting state to 2
//-----------------------------------------------------------  
  else if (state == 2)
  {
    if (y != 0)
    {
    // load one image for rocket and another image for background
    // move the rocket up 
    y = y - 4;  
    image(img1,0,0,600,400);
    image(img2,100,y, 300, 200); 
    }
    else 
    {
    // when the rocket reaches the top of the screen change to state 3
      state = 3;
    }
  }
// set the fourth scenery by setting state to 3
//-----------------------------------------------------------  
  else if (state ==3)
  {
    if (x != 600)
    {
    // load background image and sideways rocket image
    // the rocket moves left to right 
    x = x + 4;  
    image(img3,0,0,600,400);
    image(img4,x,0, 200, 200); 
    }
    else 
    {
    // when the rocket reaches the end change state to 4
      state = 4;
    }
  }

// set the fifth scenery by setting state to 4
//-----------------------------------------------------------    
  else if (state ==4)
  {
    if (x1 != 600 && y1 != 400)
    {
    //load the background image and the rocket sideway image
    // move the rocket diagonally by changing x1 and y1
    x1 = x1 + 4;
    y1 = y1 + 3;  
    image(img5,0,0,600,400);
    image(img4,x1,y1, 200, 200); 
    }
    else 
    {
    // when the rocket reaches the bottom right of the corner change state to 5
      state = 5;
    }
  }
// set the sixth scenery by setting state to 5
//-----------------------------------------------------------    
  else if (state ==5)
  {
    if (y2 != 200)
    {
  //load the background image and the rocket sideway image and the actual rocket 
  // make the rocket move down
  // make the spaceship go from left to right
    y2 = y2 + 5;  
    x2 = x2 + 3;
    image(img6,0,0,600,400);
    image(img2,300,y2, 200, 200);
    image(img7, x2, 200, 100,100);
    }
    else 
    {
    // when the rocket comes down to the ground change state to 6.
      state = 6;
    }
    //state 6 means THE END  
  }
}
    
  
