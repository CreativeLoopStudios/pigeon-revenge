var verticalSideToGenerate = random_range(0,2)
var horizontalSideToGenerate = random_range(0,2)
var choiceObject = random_range(0,2)
var angleInstance = 0;

if instance_number(obj_Car1) <= 5 /*|| instance_number(obj_Citizen2) < 15*/{

    var horizontalGeneratePoint = 0;
    var verticalGeneratePoint = 0;
    
    //escolhe qual lado vertical será gerado
    if(verticalSideToGenerate < 1){
        verticalGeneratePoint = -30
        angleInstance = -180
        
        if horizontalSideToGenerate < 1{
            horizontalGeneratePoint = 190
        }else{
            horizontalGeneratePoint = 270
        }
    }else{
        verticalGeneratePoint = room_height + 30
        angleInstance = 0 // Gira o sprite 180 graus
        
        if horizontalSideToGenerate < 1{
            horizontalGeneratePoint = 360
        }else{
            horizontalGeneratePoint = 440
        }
    }
    
    //define o objeto que será criado
    var object;
    if(choiceObject < 1){
        object = obj_Car1;
    }else{
        object = obj_Car1;
    }
    
    //verifica se o espaço está livre
    if place_empty(horizontalGeneratePoint,verticalGeneratePoint){
        //Com a instancia criada na posicao aleatória, faça:
        with(instance_create(horizontalGeneratePoint, verticalGeneratePoint, object)){
        //Definindo movimentação do carro criado
            //movimentos dos cidadãos durante a descida da tela
            if(verticalSideToGenerate < 1){
                var horizontalMove = x
                var verticalMove = room_height
                move_towards_point( horizontalMove, verticalMove, 7 )
                image_angle = angleInstance
            //movimentos dos cidadãos durante a subida da tela
            }else{
                var horizontalMove = x
                var verticalMove = 0
                move_towards_point( horizontalMove, verticalMove, 3 )
                image_angle = angleInstance
            }
        }
    }
    
}
