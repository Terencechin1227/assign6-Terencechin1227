class Cabbage extends Item{

  Cabbage(float x, float y){
    super(x,y); 
  }
  
  void display(){
    if(isAlive==true){
      for(int i = 0; i < items.length; i++){
        image(cabbage, x, y);
      }
    }
  }
  
  void checkCollision(Player player){
    if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)&&isAlive==true){

        player.health ++;
        isAlive=false;
      }
  }

}
