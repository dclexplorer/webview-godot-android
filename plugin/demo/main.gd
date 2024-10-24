extends Node

var _plugin_name = "webkit-godot-android"
var _android_plugin

func _ready():
	if Engine.has_singleton(_plugin_name):
		_android_plugin = Engine.get_singleton(_plugin_name)
	else:
		printerr("Couldn't find plugin " + _plugin_name)

func _on_Button_pressed():
	if _android_plugin:
		_android_plugin.openUrl("https://decentraland.org/auth/", "Your security code is 64")
		await get_tree().create_timer(5.0).timeout
		_android_plugin.closeWebView()
