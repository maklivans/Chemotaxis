 Bacteria [] colony = new Bacteria [50]; //jane;
 int i = colony.length;
 void setup()   
 {     
 	size(500,500);
 	//jane = new Bacteria(250,250); 
 	while(i>0) {
 		colony[i-1] = new Bacteria();
 		i--;
 	}
 	
 }   
 void draw()   
 {    
 	background(192);
 	i = colony.length;
 	while(i>0) {
 		colony[i-1].show();
 		colony[i-1].move();
 		i--;
 	}
 	//background(192);
 }  
 class Bacteria    
 {     
 	int myX,myY,myColor,myXSpeed,myYSpeed;
 	int distanceCounter = 0;
 	
 	Bacteria() {
 		myX = 250;
 		myY = 250;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		speedsss();
 	}
 	void move() {
 		myX = myX + myXSpeed;
 		myY = myY + myYSpeed;
 		distanceCounter += 1;
 		if (distanceCounter>=30) {
 			speedsss();
 			distanceCounter = 0;
 		}

 	}
 	void speedsss() {
 		myXSpeed = (int)(Math.random()*6-3);
 		myYSpeed = (int)(Math.random()*6-3);
 	}
 	void show() {
 		fill(myColor);
 		ellipse(myX,myY,30,30);
 	}
 }    