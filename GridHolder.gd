extends Area2D

var boxes= preload("res://Boxes.tscn")
var xLocation=0
var yLocation=0
var boxPosition=0
# Called when the node enters the scene tree for the first time.
func _ready():
	#rows
	for i in range(5):
		for j in range(7):
			var box=boxes.instantiate()
			var boxShape=box.get_node("CollisionShape2D")
			var recShape=boxShape.shape as RectangleShape2D
			xLocation=(1920/7.0)*j+recShape.extents.x
			yLocation=(1080/5.0)*i+recShape.extents.y
			boxPosition = Vector2(xLocation, yLocation)
			box.position=boxPosition
			add_child(box)
			print("Box added at position: ", box.position)
			
			
			


	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
