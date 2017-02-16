var horizontalSideToGenerate = irandom_range(0,2)
var verticalSideToGenerate = irandom_range(0,2)
var choiceObject = irandom_range(0,2)
var angleInstance = 0;
var spriteToGenerate = irandom_range(0,1)

var arrayOfSprites = array(spr_Citizen,spr_Citizen2)

if instance_number(obj_Citizen) < 30 {

    //escolhe qual sprite será gerada
    sprite_index = arrayOfSprites[spriteToGenerate]

    var horizontalGeneratePoint = 0;
    var verticalGeneratePoint = 0;
    
    //escolhe qual lado horizontal será gerado
    if(horizontalSideToGenerate < 1){
        horizontalGeneratePoint = random_range(75,90)
    }else{
        horizontalGeneratePoint = random_range(525,540)
    }
    //escolhe qual lado vertical será gerado
    if(verticalSideToGenerate < 1){
        verticalGeneratePoint = -30
        angleInstance = 0
    }else{
        verticalGeneratePoint = room_height + 30
        angleInstance = -180
    }
    
    
    with(instance_create(horizontalGeneratePoint, verticalGeneratePoint, obj_Citizen)){
    //Definindo movimentação do cidadão criado
        //movimentos dos cidadãos durante a descida da tela
        if(verticalSideToGenerate < 1){
            var horizontalMove = x
            var verticalMove = room_height
            move_towards_point( horizontalMove, verticalMove, 6 )
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
