public class Map{

  Types[][] firstMap = 
  { {Types.EDGE, Types.EDGE,  Types.EDGE,  Types.EDGE,  Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.GRASS, Types.GRASS, Types.GRASS, Types.EDGE},
    {Types.EDGE, Types.EDGE,  Types.EDGE,  Types.EDGE,  Types.EDGE}};
  
  Tile[][] tiles; 

  public Map(){
    tiles = new Tile[firstMap[0].length ][firstMap.length];
    
    int xCounter = 0;
    int yCounter = 0;
    for (Types[] typeArray : firstMap){
      xCounter = 0;
      for (Types type : typeArray){
        System.out.println(type);
        TileType tType = new TileType(type);
        System.out.println(xCounter + " " + yCounter + " " + tType);
        Tile tTest = new Tile(tType, TileStatus.FREE, xCounter, yCounter);
        System.out.println(tTest.status);
        
        tiles[xCounter][yCounter] = new Tile(tType, getDefault(tType.type), xCounter, yCounter);
        xCounter++;
      }
      yCounter++;
    }
    
  }

  private TileStatus getDefault(Types t){
        switch (t){
      case ROAD:
        return TileStatus.FREE;
      case FORREST:
        return TileStatus.FREE;
      case WATER:
        return TileStatus.FREE;
      case GRASS:
       return TileStatus.FREE;
      case EDGE:
       return TileStatus.WALL;    
      default:
        return null;
    }
    
  }

  private void drawMap(){
    for (Tile[] tArray : tiles){
      for (Tile t : tArray){
        t.draw();
      }
    }
  }
  
  private Tile getTile(int x, int y){
    return tiles[x][y];
  }
}