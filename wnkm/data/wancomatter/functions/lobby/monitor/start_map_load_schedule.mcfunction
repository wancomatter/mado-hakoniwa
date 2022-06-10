scoreboard players add #start_map_load counter 1
execute if score #start_map_load counter matches 0 run title @a subtitle {"text":"◻◻◻◻◻◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 1 run title @a subtitle {"text":"◼◻◻◻◻◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 2 run title @a subtitle {"text":"◼◼◻◻◻◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 3 run title @a subtitle {"text":"◼◼◼◻◻◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 4 run title @a subtitle {"text":"◼◼◼◼◻◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 5 run title @a subtitle {"text":"◼◼◼◼◼◻◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 6 run title @a subtitle {"text":"◼◼◼◼◼◼◻◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 7 run title @a subtitle {"text":"◼◼◼◼◼◼◼◻◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 8 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◻◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 9 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◼◻","color":"dark_aqua"}
execute if score #start_map_load counter matches 10 run title @a subtitle {"text":"◼◼◼◼◼◼◼◼◼◼","color":"dark_aqua"}
execute if score #start_map_load counter matches 11.. run title @a subtitle ""
execute if score #start_map_load counter matches 11.. run title @a title ""
execute if score #start_map_load counter matches 11.. run scoreboard players reset #start_map_load
execute if score #start_map_load counter matches 0.. run schedule function wancomatter:lobby/monitor/start_map_load_schedule 6t
execute unless score #start_map_load counter matches 0.. run function wancomatter:game/gamestart