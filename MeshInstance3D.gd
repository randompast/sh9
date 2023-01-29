extends MeshInstance3D

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	position.x = 1 + sin(time)
	RenderingServer.global_shader_parameter_set("bend_position", position)
