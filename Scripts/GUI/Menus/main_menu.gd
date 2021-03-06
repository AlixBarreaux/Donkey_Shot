class_name MainMenu
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


# Node Paths
export (NodePath) var first_button_to_focus_node_path = null


# Node References
onready var menus_to_display: Control = $MenusToDisplay

	# Buttons
onready var first_button_to_focus: Button = get_node(first_button_to_focus_node_path)
onready var options_button: Button = $VBoxContainer/OptionsButton

	# Menus to Display
onready var options_menu: Control = $MenusToDisplay/OptionsMenu


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	self._initialize()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.first_button_to_focus_node_path != null)
	assert(self.first_button_to_focus is Button)
	
	
func _initialize() -> void:
	self.first_button_to_focus.grab_focus()


# Visibility Changed signals
func _on_OptionsMenu_visibility_changed() -> void:
	self.menus_to_display.set_mouse_filter(MOUSE_FILTER_IGNORE)
	self.options_menu.set_mouse_filter(MOUSE_FILTER_IGNORE)

	self.options_button.grab_focus()


# Button Pressed signals
func _on_OptionsButton_pressed() -> void:
	menus_to_display.set_mouse_filter(MOUSE_FILTER_STOP)
	options_menu.set_mouse_filter(MOUSE_FILTER_STOP)
	
	options_menu.show()





onready var credits_button: Button = $VBoxContainer/CreditsButton
onready var credits_menu: Control = $MenusToDisplay/CreditsMenu

func _on_CreditsMenu_visibility_changed() -> void:
	self.menus_to_display.set_mouse_filter(MOUSE_FILTER_IGNORE)
	self.credits_menu.set_mouse_filter(MOUSE_FILTER_IGNORE)

	self.credits_button.grab_focus()


func _on_CreditsButton_pressed() -> void:
	menus_to_display.set_mouse_filter(MOUSE_FILTER_STOP)
	credits_menu.set_mouse_filter(MOUSE_FILTER_STOP)
	
	credits_menu.show()






onready var lore_button: Button = $VBoxContainer/LoreButton
onready var lore_menu: Control = $MenusToDisplay/LoreMenu
func _on_LoreButton_pressed() -> void:
	menus_to_display.set_mouse_filter(MOUSE_FILTER_STOP)
	lore_menu.set_mouse_filter(MOUSE_FILTER_STOP)
	
	lore_menu.show()

func _on_LoreMenu_visibility_changed() -> void:
	self.menus_to_display.set_mouse_filter(MOUSE_FILTER_IGNORE)
	self.lore_menu.set_mouse_filter(MOUSE_FILTER_IGNORE)

	self.lore_button.grab_focus()
