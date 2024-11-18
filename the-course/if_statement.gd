extends Node2D





func _draw() -> void:
	var r = get_viewport_rect()
	var h = r.size.x / 3
	
	var p = get_viewport().get_mouse_position()
	print(p) 
	if p.x < h:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE, true, 10, true)
		draw_rect(Rect2(0, h, h, r.size.y), Color.GREEN, true, 10, true)
		
	else:
		draw_rect(Rect2(0, 0, h, r.size.x), Color.BLUE, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.x), Color.RED, true, 10, true)
		draw_rect(Rect2(0, h, h, r.size.x), Color.YELLOW, true, 10, true)

if else:
	draw_rect(Rect2(0, 0, h, r.size.x), Color.BLUE, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.x), Color.RED, true, 10, true)
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	
	pass
