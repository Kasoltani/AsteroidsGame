class Star {
  private int x,y,siz,col;
  
  public Star(){
  	x = (int)(Math.random()*801);
  	y = (int)(Math.random()*801);
  	siz = (int)(Math.random()*5 + 2);
  	col = (int)random(150,255);
  }

  public void show(){
  	noStroke();
  	fill(col);
  	ellipse(x,y,siz,siz);
  }

}
