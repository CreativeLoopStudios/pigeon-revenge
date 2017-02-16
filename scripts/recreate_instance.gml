//recreate_instance(LimitNumberOfInstances, Position x, Position y)
var limitNumberOfInstances = argument[0]
var positionX = argument[1]
var positiony = argument[2]
if instance_number(object_index) <= limitNumberOfInstances {
    instance_create(positionX, positiony, object_index)
}
