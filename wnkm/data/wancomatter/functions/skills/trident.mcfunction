execute if entity @e[type=trident,scores={playerNumber=0},tag=trident_neptune,limit=1,distance=..4] run scoreboard players operation @e[type=trident,scores={playerNumber=0},tag=trident_neptune,limit=1,distance=..4,sort=nearest] playerNumber = @s playerNumber

scoreboard players reset @s dummy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] store result score @s dummy run data get entity @s SelectedItem.tag.CustomModelData
execute if score @s dummy matches 1.. run function wancomatter:skills/trident-launcher

execute unless entity @s[tag=failed] if score @s CooldownX matches 1.. run function wancomatter:skills/cooldown_set
execute if entity @s[tag=failed] run tag @s remove failed

scoreboard players reset @s dummy