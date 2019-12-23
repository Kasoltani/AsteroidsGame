Spaceship bob;
int astNum = 400;
Star[] stars = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
boolean up,left,right,space;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
public void setup(){
  up = left = right = space = false;
  size(800,800);
  bob = new Spaceship();
  for(int i = 0; i < stars.length; i++){
  	stars[i] = new Star();
  }
  for(int i = 0; i < astNum; i++){
  	asteroids.add(new Asteroid());
  }
}

public void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++){
  	stars[i].show();
  }
  bob.move();
  bob.show();
  for(int i = 0; i < asteroids.size(); i++){
  	asteroids.get(i).move();
  	asteroids.get(i).show();
  	float d = dist(bob.getX(),bob.getY(),asteroids.get(i).getX(),asteroids.get(i).getY());

		if(d < 25){
			asteroids.remove(i);
		}
  }

  for(int k = 0; k < bullets.size(); k++){
		bullets.get(k).show();
		bullets.get(k).move();
		for(int m = 0; m < asteroids.size(); m++){
	 		float dB = dist(bullets.get(k).getX(),bullets.get(k).getY(),asteroids.get(m).getX(),asteroids.get(m).getY());
	 		if(dB < 25){
	 			asteroids.remove(m);
	 			bullets.remove(k);
	 			break;
	 		}
	 	}
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
	if(key == 'c'){
		bullets.add(new Bullet());
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


