extends Label

func _ready():
	text = str(Global.highscore)
	
func _process(_delta):
	if Global.points > Global.highscore:
		Global.highscore = Global.points
		
		
