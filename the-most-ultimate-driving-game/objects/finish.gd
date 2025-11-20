extends Node2D

@onready var ns = $Endd
@onready var endarea = $Area2D

func _ready():
	ns.visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.set_physics_process(false)  
		body.set_process_input(false)
		ns.visible = true
