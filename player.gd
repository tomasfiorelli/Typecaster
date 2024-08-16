extends CharacterBody2D

var speed := 250.0
var direction := Vector2.ZERO

@export var Bullet: PackedScene

func ready():
	pass

func _physics_process(_delta):
	direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()
	if Input.is_action_just_pressed("ui_accept"):
		shoot()

func shoot():
	var bullet = Bullet.instantiate()

	
