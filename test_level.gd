extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $player.health == 0:
		$player.position.x = -361
		$player.position.y = -94
		$player.health = 1


func _on_water_body_entered(body):
	$player.health -= 1
