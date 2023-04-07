extends CharacterBody2D

@export var speed = 400 

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()



#var velocity1 : Vector2 = Vector2()
#var direction : Vector2 = Vector2()
#func read_input():
#	velocity1 = Vector2()
#	if Input.is_action_just_pressed("up"):
#		velocity1.y -= 1 
#		direction = Vector2(0, -1)
#
#	if Input.is_action_just_pressed("down"):
#		velocity1.y += 1
#		direction = Vector2(0, 1)
#
#	if Input.is_action_just_pressed("left"):
#		velocity1.x -= 1 
#		direction = Vector2(-1, 0)
#
#	if Input.is_action_just_pressed("right"):
#		velocity1.x += 1 
#		direction = Vector2(1, 0)
#
#	velocity1 = velocity1.normalized()	
#	move_and_slide()
#
#func _physics_process(delta):
#	read_input()
