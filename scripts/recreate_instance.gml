//recreate_instance(LimitNumberOfInstances, Position x, Position y, imageScaleX)
var limitNumberOfInstances = argument[0]
var positionX = argument[1]
var positiony = argument[2]
var imageScaleX = argument[3]
if instance_number(object_index) <= limitNumberOfInstances {
    //image_angle = imageAngle
    image_xscale = imageScaleX
    instance_create(positionX, positiony, object_index)
}
