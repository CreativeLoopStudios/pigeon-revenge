//obter posicao da rua em relação a pessoa
//var streetInstancePosition;
//streetInstancePosition = instance_place(x, y, obj_street);

var horizontalSideToGenerate = random_range(0,2)
var verticalSideToGenerate = random_range(0,2)

//mover rua para o topo
if(y >= room_height){
    
    var horizontalGeneratePoint = 0;
    var verticalGeneratePoint = 0;
    
    //escolhe qual lado horizontal será gerado
    if(horizontalSideToGenerate < 1){
        horizontalGeneratePoint = random_range(265,300)
    }else{
        horizontalGeneratePoint = random_range(700,736)
    }
    //escolhe qual direção vertical do cidadão
    if(verticalSideToGenerate < 1){
        verticalGeneratePoint = room_height - 30
    }else{
        verticalGeneratePoint = room_height + 30
    }
    
    action_move_to(horizontalGeneratePoint,verticalGeneratePoint);
}else{

    //movimentos dos cidadãos durante a descida da tela
    if(verticalSideToGenerate < 1){
        var horizontalMove = x
        var verticalMove = random_range(y,y+6)
        action_move_to(horizontalMove,verticalMove)
     //movimentos dos cidadãos durante a subida da tela
    }else{
        var horizontalMove = x
        var verticalMove = random_range(y,y-6)
        action_move_to(horizontalMove,verticalMove)
    }
    
}

