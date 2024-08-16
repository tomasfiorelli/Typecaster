extends CharacterBody2D

@export var max_health := 50

var health: int : set = set_health

@onready var progress_bar = $ProgressBar 

func set_health(new_health: int):
	health = new_health
	progress_bar.value = health

func _ready():
	health = max_health
	progress_bar.max_value = max_health

func _on_area_2d_body_entered(_body):
	take_damage(2)

func _on_area_2d_body_exited(_body):
	pass # Replace with function body.

func take_damage(damage: int):
	health = max(health - damage, 0)
	if health == 0:
		queue_free()
