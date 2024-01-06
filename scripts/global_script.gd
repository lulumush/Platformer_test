extends Node

var apple_amount = 0

signal  on_apple_added(apple_count)
	
func add_apple(amount):
	apple_amount += amount
	emit_signal("on_apple_added", apple_amount)
