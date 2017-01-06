//mover rua para o topo
if(y >= room_height){
    action_move_to(x,-30);
}else{
    //movimentos dos cidadãos durante a descida da tela
    var horizontalMove = random_range(x-2,x+2)
    if(horizontalMove < 0){
    
    }
    action_move_to(random_range(x-2,x+2),random_range(y,y+6))
}

