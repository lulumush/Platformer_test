extends CanvasLayer

@onready var apple_counter = $Control/apple_counter

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalScript.on_apple_added.connect(apple_added)

func apple_added(apple_amount):
	apple_counter.text = "Apple amount: " + str(apple_amount)
