//Destroy_Instance_When_Scrolled(HeightToDestroyAtHeader, HeightToDestroyAtFooter)

var heightToDestroyAtHeader = argument0
var heightToDestroyAtFooter = argument1

if(y > room_height + heightToDestroyAtHeader){
    instance_destroy();
}
if(y < -heightToDestroyAtFooter){
    instance_destroy();
}
