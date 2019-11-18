class Spaceship extends Floater{   
    public Spaceship(){
    	corners = 4;
    	int[] xS = {-8,16,-8,-2};
    	int[] yS = {-8,0,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,255,255);
    	myCenterX = width/2;
    	myCenterY = height/2;
    	// myDirectionX = 0;
    	// myDirectionY = 0;
    	// myPointDirection = 0;
	}
	public void setX(int x){myCenterX = x;}
	public int getX(){return (int)myCenterX;}
	public void setY(int y){myCenterY = y;}
	public int getY(){return (int)myCenterY;}
 	public void setDirectionX(double x){myDirectionX = x;}  
 	public double getDirectionX(){return myDirectionX;} 
 	public void setDirectionY(double y){myDirectionY = y;}   
	public double getDirectionY(){return myDirectionY;}  
	public void setPointDirection(int degrees){myPointDirection = degrees;}   
	public double getPointDirection(){return myPointDirection;} 
	
	public void move(){  

		myCenterX += myDirectionX;
		myCenterY += myDirectionY;

		if(myCenterX >width){
			myCenterX = 0;
		}
		else if (myCenterX<0){
			myCenterX = width;
		}
		if(myCenterY >height){
			myCenterY = 0;
		}
		else if (myCenterY < 0){
			myCenterY = height;
		}

		
	}
	
	public void show(){
		fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}
}
