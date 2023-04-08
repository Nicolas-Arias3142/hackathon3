extends CharacterBody2D

@export var speed = 100
@export var motion = velocity

var directionX = 1 #1 == right and -1 == left
var directionY = 1
func _physics_process(delta):
	velocity.y = directionY * speed
	velocity.x = directionX * speed 
	if is_on_wall():
		directionX = directionX * -1 
	if is_on_ceiling():
			directionY = directionY * -1
	if is_on_floor():
		directionY = directionY * -1
	motion = move_and_slide()


