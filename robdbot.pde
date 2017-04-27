PlayerBot player;
static Map m;
static int multiplier = 5;
void setup(){
  m = new Map();
  player = new PlayerBot(3,5);
  size(600, 500);
}

void draw(){
  
  m.drawMap();
  player.draw();
}

void keyPressed() {
  
  switch (key){
      case 'w':
        player.moveUp();
        break;
      case 's':
        player.moveDown();
        break;
 
      default:

    }
}