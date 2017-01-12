//mover rua para o topo
if(y >= room_height){
    action_move_to(x,-120);
}else{
    
    //movimentos dos carros durante a descida da tela
    var horizontalMove = x
    var verticalMove = random_range(y,y+6)
    
    action_move_to(horizontalMove,verticalMove)
    
}

