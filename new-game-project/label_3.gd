extends Label

@onready var flo_mod := -0.5
var points = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var string_mod = String.num(flo_mod, 2)
	$".".text = "X " + string_mod


func _on_button_pressed() -> void:
	flo_mod += 0.25
	points += 500 * flo_mod
	print(points)
