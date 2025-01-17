class Bullet extends Floater{
	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}
	public double getDirectionX() {return myDirectionX;}
	public void setDirectionY(double y) {myDirectionY = y;}
	public double getDirectionY() {return myDirectionY;}
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
	public double getPointDirection() {return myPointDirection;}

	private double dRadians;
	private int col;

	public Bullet(){
		myCenterX = bob.getX(); 
		myCenterY = bob.getY();

		myPointDirection = bob.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);

		myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + bob.getDirectionY();
		col = color(random(0,255),random(0,255),random(0,255));
	}

	public void show(){
		noStroke();
		fill(col);
		ellipse((float)myCenterX,(float)myCenterY,(float)6,(float)6);
	}
	public void move(){
		myCenterX += myDirectionX;    
   		myCenterY += myDirectionY; 
	}
}
