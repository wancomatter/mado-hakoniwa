scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @a[scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber run tag @s add buff
execute as @a[tag=buff] run scoreboard players add #dummy counter 1
scoreboard players operation #dummy Mana = @s Mana
scoreboard players operation #dummy Mana /= #dummy counter
scoreboard players operation @a[tag=buff] Mana += #dummy Mana
tellraw @a[tag=buff] ["",{"text":"プロキオン","color":"#E059FF","bold":true},{"text":"によりMPが","color":"gray"},{"score":{"name":"#dummy","objective":"Mana"},"color":"aqua"},{"text":"回復した","color":"gray"}]
execute as @a[tag=buff] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

tag @a[tag=buff] remove buff
scoreboard players reset #dummy

kill @s