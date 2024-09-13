extends Area2D

@export var damage = 5
@export var speed = 500

var direction : Vector2 

func _physics_process(delta):
	position += direction * delta * speed

func _on_body_entered(body):
	if body is Enemy:
		body.take_damage(damage)
	queue_free()

func _on_timer_timeout():
	queue_free()
