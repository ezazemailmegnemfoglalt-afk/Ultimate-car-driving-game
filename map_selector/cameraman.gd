extends CharacterBody2D

@onready var left = $left
@onready var right = $right
@onready var els = $"../w1/Button"
@onready var mas = $"../w2/w2"
@onready var harm = $"../w3/w3b"
@onready var negy = $"../w4/w4b"
@onready var ot = $"../w5/w5b"

var moved = 500
var target_x = 0.0
var speed = 300.0 
var mehet = true

func _ready() -> void:
	els.visible = true
	mas.visible = true
	harm.visible = true
	negy.visible = true
	ot.visible = true
	mehet = true



	els.disabled = false

func _physics_process(delta: float) -> void:
	if mehet == true:
		if position.x != target_x:
			var direction = sign(target_x - position.x)
			velocity.x = direction * speed
		
		# Stop when close enough to target
			if abs(position.x - target_x) < 5:
				velocity.x = 0
				position.x = target_x
		else:
			velocity.x = 0
		
		if target_x != 0:
			left.visible = true
		else:
			left.visible = false
	
		if target_x != 2000:
			right.visible = true
		else:
			right.visible = false
		move_and_slide()
		
	else:
		right.visible = false
		left.visible = false
	
	if target_x != 0:
		els.disabled = true
	else:
		els.disabled = false
	if target_x != 500:
		mas.disabled = true
	else:
		mas.disabled = false
	if target_x != 1000:
		harm.disabled = true
	else:
		harm.disabled = false
	if target_x != 1500:
		negy.disabled = true
	else:
		negy.disabled = false
	if target_x != 2000:
		ot.disabled = true
	else:
		ot.disabled = false



func _on_right_pressed() -> void:
	if target_x != 2000:
		target_x += moved
		print(target_x)
	
func _on_left_pressed() -> void:
	if target_x != 0:
		target_x -= moved
		print(target_x)


func _on_button_pressed() -> void:
	els.visible = false
	mas.visible = false
	harm.visible = false
	negy.visible = false
	ot.visible = false
	get_tree().change_scene_to_file("res://maps/mapsw_1.tscn")
	mehet = false


func _on_w_2_pressed() -> void:
	els.visible = false
	mas.visible = false
	harm.visible = false
	negy.visible = false
	ot.visible = false
	get_tree().change_scene_to_file("res://maps/mapsw_2.tscn")
	mehet = false

func _on_w_3b_pressed() -> void:
	els.visible = false
	mas.visible = false
	harm.visible = false
	negy.visible = false
	ot.visible = false
	get_tree().change_scene_to_file("res://maps/mapsw_3.tscn")
	mehet = false


func _on_w_4b_pressed() -> void:
	els.visible = false
	mas.visible = false
	harm.visible = false
	negy.visible = false
	ot.visible = false
	get_tree().change_scene_to_file("res://maps/mapsw_4.tscn")
	mehet = false


func _on_w_5b_pressed() -> void:
	els.visible = false
	mas.visible = false
	harm.visible = false
	negy.visible = false
	ot.visible = false
	get_tree().change_scene_to_file("res://maps/mapsw_5.tscn")
	mehet = false
