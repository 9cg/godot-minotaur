extends Sprite

func _ready():
	randomize()
	var random_number = randi()%64+1
	self.texture = load("res://food/food_" + str(random_number) + ".png")
	self.rotation = randi()%360+0
