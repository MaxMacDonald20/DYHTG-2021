extends Area2D

func _ready():
	connect("on_body_entered", self, "_on_body_entered")
	
func _on_body_entered(other):
	if (other.has_method("add_puzzlePiece")):
		other.add_puzzlePiece()
		
		queue_free()
