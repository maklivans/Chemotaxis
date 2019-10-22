 Bacteria [] colony = new Bacteria [100]; //jane;
 int i = colony.length-1;
 void setup()   
 {     
 	size(500,500);
 	//jane = new Bacteria(250,250); 
 	while(i>=0) {
 		colony[i] = new Bacteria();
 		i--;
 	}
 	
 }   
 void draw()   
 {    
 	background(192);
 	i = colony.length-1;
 	while(i>=0) {
 		colony[i].show();
 		colony[i].move();
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
 		myXSpeed = (int)(Math.random()*10-5);
 		myYSpeed = (int)(Math.random()*10-5);
 	}
 	void move() {
 		myX = myX + myXSpeed;
 		myY = myY + myYSpeed;
 		distanceCounter += 1;
 		if (distanceCounter>=4) {
 			speedsss();
 			distanceCounter = 0;
 		}

 	}
 	void speedsss() {
 		if (mouseX>myX) {
 			myXSpeed = (int)(Math.random()*10-4);
 		} else if (mouseX<myX) {
 			myXSpeed = (int)(Math.random()*10-6);
 		}
 		if (mouseY>myY) {
 			myYSpeed = (int)(Math.random()*10-4);
 		} else if (mouseY<myY) {
 			myYSpeed = (int)(Math.random()*10-6);
 		}
 		
 	}
 	void show() {
 		fill(myColor);
 		ellipse(myX,myY,5,5);
 	}
 }    