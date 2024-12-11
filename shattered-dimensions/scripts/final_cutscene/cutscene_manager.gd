extends Node

class_name FinalCutsceneManager

@export var player_node_path: NodePath
var player : Node2D

@export var enemy_node_path: NodePath
var enemy : Node2D

@onready var dialogue: Control = $Control
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var choice_menu: CanvasLayer = $ChoiceMenu
var choice : bool = false

var cutscene_commands = [
	{"command": DurativeMoveRightCommand.new(1.5), "target": "player"},
	{"command": DurativeDialogueCommand.new("Finally escaped!", 2.0), "target": "player"},
	{"command": DurativeDialogueCommand.new("Wait... where am I?", 2.0), "target": "player"},
	{"command": DurativeSpinCommand.new(), "target": "player"}, 
#
	{"command": DurativeMoveLeftCommand.new(2.0), "target": "enemy"},
	{"command": DurativeCheerCommand.new(2.0), "target": "enemy"}, 
	{"command": DurativeDialogueCommand.new("Wow, it’s been so long since someone escaped!", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("You’re the 7th prisoner to escape!", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("Been ages since I’ve spoken to someone. HAHAHA!", 3.0), "target": "enemy"},

	{"command": DurativeDialogueCommand.new("Who the hell are you?", 2.0), "target": "player"},
	{"command": DurativeAttackCommand.new(), "target": "player"}, 
	{"command": DurativeDeathCommand.new(), "target": "enemy"}, 

	{"command": DurativeIdleCommand.new(1.0), "target": "enemy"}, 
	{"command": DurativeDialogueCommand.new("HAHA!", 2.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("Got you with that one! Works every time.", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("I didn't even shoot you yet...", 3.0), "target": "player"},
	{"command": DurativeDialogueCommand.new("HAHA! I like you!", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("Now that we’re done with formalities, how about you follow me?", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("Why in the world would I do that OLD MAN!", 3.0), "target": "player"},
	
	{"command": DurativeDialogueCommand.new("Boy do you think that escaping the prison is the end!!!", 3.0), "target": "enemy"},
	{"command": DurativeDialogueCommand.new("Will you come with me or not?", 3.0), "target": "enemy"},
	{"command": "show_choice_menu", "target": null},
	{"command": DurativeMoveRightCommand.new(3.0), "target": "enemy"},

	{"command": DurativeDialogueCommand.new("Oh well, got nothing better to do. Time for the next adventure!", 3.0), "target": "player"},
	{"command": DurativeMoveRightCommand.new(3.0), "target": "player"}
]


var current_index = 0
var active_command = null

func _ready():
	choice_menu.visible = false
	audio_stream_player_2d.play()
	player = get_node_or_null(player_node_path)
	enemy = get_node_or_null(enemy_node_path)
	player.unbind_player_input_commands()
	player.dialogue_box = dialogue
	enemy.dialogue_box = dialogue
	player.cutscene_state = true
	run_next_command()

func run_next_command():
	if current_index < cutscene_commands.size():
		var entry = cutscene_commands[current_index]
		if typeof(entry.command) == TYPE_STRING and entry.command == "show_choice_menu":
			show_choice_menu()
		elif typeof(entry.command) == TYPE_STRING and entry.command == "prison":
			get_tree().change_scene_to_file("res://scenes/prison.tscn")
		else:
			active_command = entry.command
			var target_character = get_character_by_name(entry.target)
			
			if active_command:
				var result = active_command.execute(target_character)
				if result == Command.Status.ACTIVE:
					await _wait_for_command_completion(target_character)
				else:
					current_index += 1
					run_next_command()
	else:
		GlobalVars.platformerCompleted = false
		GlobalVars.carCompleted = false
		GlobalVars.shooterCompleted = false
		GlobalVars.spaceshipCompleted = false
		get_tree().change_scene_to_file("res://scenes/menu_screens/credits.tscn")

func _wait_for_command_completion(character):
	while active_command and active_command.execute(character) == Command.Status.ACTIVE:
		await get_tree().process_frame
	current_index += 1
	run_next_command()

func get_character_by_name(name: String) -> Node:
	match name:
		"player": return player
		"enemy": return enemy
	return null

func handle_yes_choice():
	print("Player chose YES - continuing cutscene.")
	current_index += 1  
	run_next_command()
	
func handle_no_choice():
	GlobalVars.platformerCompleted = false
	GlobalVars.carCompleted = false
	GlobalVars.shooterCompleted = false
	GlobalVars.spaceshipCompleted = false
	cutscene_commands = [
		{"command": DurativeDialogueCommand.new("You dare say no to me?!", 2.0), "target": "enemy"},
		{"command": DurativeMoveLeftCommand.new(2.15), "target": "enemy"},
		{"command": DurativeDialogueCommand.new("Back to the prison with you!", 2.0), "target": "enemy"},
		{"command": DurativeAttackCommand.new(), "target": "enemy"},
		{"command": DurativeSpinCommand.new(), "target": "player"},
		{"command": 'prison', "target" : null},
		]
	current_index = 0 
	run_next_command()
	
func show_choice_menu():
	choice_menu.visible = true   
	choice_menu.choice_made.connect(_on_choice_made, CONNECT_ONE_SHOT)
	
func _on_choice_made(result: String):
	if result == "yes":
		print("Player chose YES - continuing the cutscene.")
		handle_yes_choice()
	elif result == "no":
		print("Player chose NO - triggering alternate sequence.")
		handle_no_choice()
		
