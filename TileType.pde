public enum Types{
  ROAD, FORREST, WATER, GRASS
}

public class TileType{  
  Types type;
  color tColor;
  
  public TileType(Types t){
    this.type = t;
  
    switch (t){
      case ROAD:
        this.tColor = color(224,182,15);
      case FORREST:
        this.tColor = color(18,89,11);
      case WATER:
        this.tColor = color(54, 152, 226);
      case GRASS:
       this.tColor = color(38,204,44);
    }
  }
}