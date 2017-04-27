public enum Types{
  ROAD, FORREST, WATER, GRASS, EDGE
}

public class TileType{  
  Types type;
  color tColor;
  
  public TileType(Types t){
    this.type = t;
  
    switch (t){
      case ROAD:
        this.tColor = color(224,182,15);
        break;
      case FORREST:
        this.tColor = color(18,89,11);
        break;
      case WATER:
        this.tColor = color(54, 152, 226);
        break;
      case GRASS:
       this.tColor = color(38,204,44);
       break;
      case EDGE:
       this.tColor = color(15,15,15);
       break;
       
      default:
        this.tColor = color(0);
    }
  }
}