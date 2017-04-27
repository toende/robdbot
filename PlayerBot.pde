public class PlayerBot{

  boolean canMove = true;
  int posX;
  int posY;
  
  public PlayerBot(int x, int y){
    this.posX = x;
    this.posY = y;
  }
  
  private void draw(){
    fill(255,0,0);
    ellipse(posX*10*multiplier+(10*multiplier)/2, posY*10*multiplier+(10*multiplier)/2, 9*multiplier, 9*multiplier);
  }
  
  private void moveUp(){
    if(canMove && m.getTile(posX, posY-1).status == TileStatus.FREE && posY > 0){
      posY--;
    } else {
      System.out.println("Could not move up");
    }
  }
  
    private void moveDown(){
    if(canMove && m.getTile(posX, posY+1).status == TileStatus.FREE && posY < m.tiles[0].length){
      posY++;
    } else {
      System.out.println("Could not move down");
    }
  }
  
  private void moveLeft(){
    if(canMove && m.getTile(posX-1, posY).status == TileStatus.FREE && posX > 0){
      posX--;
    } else {
      System.out.println("Could not move left");
    }
  }
}