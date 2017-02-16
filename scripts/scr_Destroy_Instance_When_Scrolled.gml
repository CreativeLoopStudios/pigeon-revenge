//Destroy_Instance_When_Scrolled(HeightToDestroyAtHeader, HeightToDestroyAtFooter)

var heightToDestroyAtHeader = argument[0]
var heightToDestroyAtFooter = argument[1]

if(y > (room_height + heightToDestroyAtHeader)){
    instance_destroy();
}
if(y < heightToDestroyAtFooter){
    instance_destroy();
}
