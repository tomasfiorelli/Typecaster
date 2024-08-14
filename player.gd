extends CharacterBody2D

var speed := 400.0
var direction := Vector2.ZERO

func ready():
	pass

func _physics_process(delta):
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
