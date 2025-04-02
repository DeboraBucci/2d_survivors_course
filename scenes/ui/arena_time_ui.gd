extends CanvasLayer

@export var arena_time_manager: Node
@onready var label = $%Label

func _process(delta):
	if arena_time_manager == null:
		return
	
	var time_elapsed = arena_time_manager.get_time_elapsed()
	var time_text = format_seconds_to_string(time_elapsed)
	label.text = time_text


func format_seconds_to_string(seconds: float):
	var minutes = int(seconds / 60)
	var remaining_seconds = int(seconds) % 60
	
	return str(minutes).pad_zeros(2) + ":" + str(remaining_seconds).pad_zeros(2)
