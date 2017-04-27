public class Map{

  Types[][] firstMap = 
  { {Types.WATER, Types.WATER,  Types.WATER,  Types.WATER,  Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.GRASS, Types.GRASS, Types.GRASS, Types.WATER},
    {Types.WATER, Types.WATER,  Types.WATER,  Types.WATER,  Types.WATER}};
  
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
        
        tiles[xCounter][yCounter] = new Tile(tType, TileStatus.FREE, xCounter, yCounter);
        xCounter++;
      }
      yCounter++;
    }
    
  }

  private void drawMap(){
    for (Tile[] tArray : tiles){
      for (Tile t : tArray){
        t.draw();
      }
    }
  }
}