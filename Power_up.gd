extends Sprite2D

@export var player_variable_modify : String
@export var player_variable_set : float

@export var power_up_cooldown = 2 


func _on_hit_box_area_entered(area: Area2D) -> void:
	if area.is_in_group("Player"):
		area.get_parent().set(player_variable_modify, player_variable_set)
		area.get_parent().get_node("Power_up_cooldown").wait_time = 2
		area.get_parent().get_node("Power_up_cooldown").start()
		area.get_parent().power_up_reset.append(name)
		queue_free()
