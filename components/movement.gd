extends Node

@export var parent_entity: CharacterBody2D

@export var speed: int = 300

@export_group("Movement Keys")
@export var up: String = "ui_up"
@export var down: String = "ui_down"
@export var left: String = "ui_left"
@export var right: String = "ui_right"

var input_direction: Vector2

func get_input() -> void:
	input_direction = Input.get_vector(left, right, up, down)
	parent_entity.velocity = input_direction * speed

func _physics_process(delta: float) -> void:
	get_input()
	parent_entity.move_and_slide()
