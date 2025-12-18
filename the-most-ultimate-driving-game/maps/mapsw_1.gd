extends Node2D

@onready var back = $exit
@onready var first = $w1maps/map1btn
@onready var second =$w1maps/map2btn
@onready var third =$w1maps/map3btn 
@onready var fourth = $w1maps/map4btn
@onready var fifth = $w1maps/map5btn
@onready var sixth = $w1maps/map6btn
@onready var seventh = $w1maps/map7btn
@onready var eightcadik = $w1maps/map8btn
@onready var nineth = $w1maps/map9btn
@onready var tenth = $w1maps/map10btn


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://map_selector/map_selector1.tscn")


func _on_map_1_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/therealmap_1.tscn")


func _on_map_2_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map1.tscn")


func _on_map_3_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map2.tscn")


func _on_map_4_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map_3.tscn")


func _on_map_5_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map4.tscn")

func _on_map_6_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map_5.tscn")


func _on_map_7_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map_6.tscn")


func _on_map_8_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map7.tscn")


func _on_map_9_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map9.tscn")


func _on_map_10_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://maps/map_10.tscn")
