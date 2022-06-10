scoreboard players add @s subcounter 1
scoreboard players add @s counter 1
particle enchanted_hit ~ ~0.3 ~ 0.3 0.6 0.3 0.3 3 normal @a
particle enchanted_hit ~ ~0.3 ~ 0.1 0.3 0.1 0.3 1 force @a
execute if score @s counter matches 50.. run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.2 2
execute if score @s counter matches 50.. run scoreboard players set @s counter 40
execute positioned ~-0.5 ~ ~-0.5 if entity @e[scores={maxHP=1..},tag=!bear,tag=!boss,tag=!hit,dx=0,dy=0,dz=0,limit=1] run tag @e[scores={maxHP=1..},tag=!bear,tag=!boss,tag=!hit,dx=0,dy=0,dz=0] add hit
execute unless score @s subcounter matches 100.. positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air unless entity @e[tag=hit,limit=1] run function wancomatter:boss/bear/child/skill5/razer