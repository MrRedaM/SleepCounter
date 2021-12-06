extends Control

var date = OS.get_unix_time_from_datetime (
	 { 
		"year": 2021, 
		"month": 12, 
		"day":4} )

onready var _counter_label := $VBoxContainer/HBoxContainer/DaysCount
onready var _animation := $AnimationPlayer

func _ready():
	update_counter()
	_animation.play("glow")


func update_counter():
		var current_date = OS.get_unix_time_from_datetime(OS.get_datetime())
		_counter_label.text = str((current_date - date) / 60 / 60 / 24)


func _on_RefreshTimer_timeout():
	update_counter()
