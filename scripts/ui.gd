extends CanvasLayer

var level_start_time

@onready var apple_counter = $Control/apple_counter
@onready var timer = $Control/timer

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalScript.on_apple_added.connect(apple_added)
	level_start_time = Time.get_ticks_msec()

func _process(delta):
	var elapsed_time = (Time.get_ticks_msec() - level_start_time) / 1000.0
	timer.text = "Time: " + str(elapsed_time)

func apple_added(apple_amount):
	apple_counter.text = "Apple amount: " + str(apple_amount)
