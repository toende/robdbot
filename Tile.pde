public enum TileStatus{
  FREE, WALL, OCCUPIED
}

public class Tile{

  TileStatus status;
  TileType type;
  int posX;
  int posY;
  
  public Tile(TileType t, TileStatus s, int x, int y){
    this.status = s;
    this.type = t;
    this.posX = x;
    this. posY = y;
  }
  
  private void draw(){
    fill(type.tColor);
    rect(posX*10*multiplier, posY*10*multiplier, 10*multiplier, 10*multiplier);
  }
}