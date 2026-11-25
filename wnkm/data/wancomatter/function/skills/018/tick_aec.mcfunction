execute if score @s counter matches 31 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.42
execute if score @s counter matches 32 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.28
execute if score @s counter matches 33 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.34
execute if score @s counter matches 34 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.38
execute if score @s counter matches 35 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.14
execute if score @s counter matches 36 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.16
execute if score @s counter matches 37 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.15
execute if score @s counter matches 38 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.3
execute if score @s counter matches 39 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.2
execute if score @s counter matches 40 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.42
execute if score @s counter matches 41 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.44
execute if score @s counter matches 42 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.16
execute if score @s counter matches 43 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.35
execute if score @s counter matches 44 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.18
execute if score @s counter matches 45 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.1
execute if score @s counter matches 46 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.39
execute if score @s counter matches 47 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.12
execute if score @s counter matches 48 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.47
execute if score @s counter matches 49 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.4
execute if score @s counter matches 50 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.39

execute if score @s Mana matches 9.. run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute at @s run function wancomatter:skills/018/tick_aec_loop
execute at @s run function wancomatter:skills/018/tick_aec_loop
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/018/hit
scoreboard players reset #dummy
execute if score @s counter matches 40 if score @s Mana matches 9.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
execute if score @s counter matches 40 if score @s Mana matches 9.. run kill @s
