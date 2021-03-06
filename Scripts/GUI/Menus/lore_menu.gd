class_name LoreMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.first_button_to_focus_node_path != null)
	assert(self.first_button_to_focus is Button)


func _on_visibility_changed() -> void:
	if self.visible:
		self.first_button_to_focus.grab_focus()
	else:
		self.first_button_to_focus.release_focus()


func _on_BackButton_pressed() -> void:
	self.hide()
