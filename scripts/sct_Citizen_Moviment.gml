//obter posicao da rua em relação a pessoa
//var streetInstancePosition;
//streetInstancePosition = instance_place(x, y, obj_street);


//mover rua para o topo
if(y >= room_height){
    action_move_to(x,-30);
}else{
    
    //movimentos dos cidadãos durante a descida da tela
    var horizontalMove = random_range(x-2,x+2)
    var verticalMove = random_range(y,y+6)
    //var streetLeft = obj_Street.bbox_left
    //var streetRight = obj_Street.bbox_right
    
    //estabelecendo limites da pista à esquerda
   // if(horizontalMove <= streetLeft){
   //     horizontalMove += 2;
    //}
    //estabelecendo limites da pista à direita
   // else if(horizontalMove >= streetRight){
   //     horizontalMove -=2;
  //  }
        action_move_to(horizontalMove,verticalMove)
    
}

