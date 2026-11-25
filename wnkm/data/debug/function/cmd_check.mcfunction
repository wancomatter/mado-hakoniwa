execute store result score #debug counter run data get entity @s SelectedItem.components."minecraft:custom_data".LegacySkill 1
tellraw @a {"score":{"name":"#debug","objective":"counter"}}
scoreboard players reset #debug
