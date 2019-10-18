 Bacteria [] colony = //jane;
 void setup()   
 {     
 	size(500,500);
 	//jane = new Bacteria(250,250); 
 	
 }   
 void draw()   
 {    
 	jane.show();
 	jane.move();   
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
 		myXSpeed = (int)(Math.random()*4-2);
 		myYSpeed = (int)(Math.random()*4-2);
 	}
 	void show() {
 		fill(myColor);
 		ellipse(myX,myY,30,30);

 	}
 }    