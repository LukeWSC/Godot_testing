extends VBoxContainer

@onready var questions = {
		"Weed 1": true,
		"Weed 2": true,
		"Weed 3": true,
		"Weed 4": true,
		"Weed 5": true,
		"Weed 6": true,
	}

signal silly()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	questions["Weed 1"] = true
	print(questions["Weed 1"])
	silly.connect(_on_silly)
	
	#if questions["Weed 1"] == true:
	#	print("hurray")
	#	questions["Weed 6?!?!"] = false
	
	silly.emit()
	for weed in questions:
		print(weed + ": " + str(questions[weed]))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_silly():
	print(questions["Weed 1"])


func _on_check_box_pressed() -> void:
	if $PanelContainer/CheckBox.button_pressed == true:
		questions["Weed 1"] = true
		print(questions["Weed 1"])

	else:
		questions["Weed 1"] = false
		print(questions["Weed 1"])
