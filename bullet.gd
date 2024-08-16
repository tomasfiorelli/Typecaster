extends Area2D

@export var damage = 5
@export var speed = 500

func _on_body_entered(body):
	queue_free()

func _on_timer_timeout():
	queue_free()
