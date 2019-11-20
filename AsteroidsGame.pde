Spaceship bob;
Star[] stars = new Star[500];
Asteroid[] asteroids = new Asteroid[10];
boolean up,left,right,space;
public void setup(){
  up = left = right = space = false;
  size(800,800);
  bob = new Spaceship();
  for(int i = 0; i < stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i < asteroids.length; i++){
  	asteroids[i] = new Asteroid();
  }
}

public void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++){
  	stars[i].show();
  }
  bob.move();
  bob.show();
  for(int i = 0; i < asteroids.length; i++){
  	asteroids[i].move();
  	asteroids[i].show();
  }
  control(); 
}

public void keyPressed(){
	if(keyCode == RIGHT){
		right = true;
		//bob.turn(10);
	}
	if(keyCode == LEFT){
		left = true;
		//bob.turn(-10);
	}
	if(keyCode == UP){
		up = true;
		//bob.accelerate(.3);
	}
	if(key == ' '){
		space = true;
		// bob.setX((int)random(0,width));
		// bob.setY((int)random(0,height));
		// bob.setPointDirection((int)(Math.random()*360 + 1));
		// bob.setDirectionX((double)0);
		// bob.setDirectionY((double)0);
	}
}

public void keyReleased(){
	if(keyCode == RIGHT){
		right = false;
	}
	if(keyCode == LEFT){
		left = false;
	}
	if(keyCode == UP){
		up = false;
	}
	if(key == ' '){
		space = false;
	}
}

public void control(){
	if(right){
		bob.turn(6);
	}
	if(left){
		bob.turn(-6);
	}
	if(up){
		bob.accelerate(.1);
	}
	if(space){
		bob.setX((int)random(0,width));
		bob.setY((int)random(0,height));
		bob.setPointDirection((int)(Math.random()*360 + 1));
		bob.setDirectionX((double)0);
		bob.setDirectionY((double)0);
	}
}

