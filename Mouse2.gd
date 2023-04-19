extends Node3D

var SPEED = 0.1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector3.ZERO
	if(Input.is_action_pressed("move_up")):
		
		direction.z -= 1;
	if(Input.is_action_pressed("move_down")):
		direction.z += 1;
	if(Input.is_action_pressed("move_left")):
		print("move_left")
		direction.x -= 1;
	if(Input.is_action_pressed("move_right")):
		direction.x += 1;
	
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		look_at(position - direction, Vector3.UP)
		position = position + SPEED * direction;
	
	
