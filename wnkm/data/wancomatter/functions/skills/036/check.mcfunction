scoreboard players operation #dummy subcounter = @s playerNumber
execute as @e[tag=set_water] if score @s playerNumber = #dummy subcounter run scoreboard players set @s counter 501
execute as @e[tag=set_water,scores={counter=501}] at @s run function wancomatter:skills/036/tick
scoreboard players set #dummy subcounter 0
execute if block ~0.5 ~0.5 ~0.5 #wancomatter:3air if block ~0.5 ~-0.5 ~0.5 #wancomatter:3air if block ~-0.5 ~0.5 ~0.5 #wancomatter:3air if block ~-0.5 ~-0.5 ~0.5 #wancomatter:3air if block ~-0.5 ~0.5 ~-0.5 #wancomatter:3air if block ~-0.5 ~-0.5 ~-0.5 #wancomatter:3air if block ~0.5 ~0.5 ~-0.5 #wancomatter:3air if block ~0.5 ~-0.5 ~-0.5 #wancomatter:3air if block ~1.5 ~0.5 ~0.5 #wancomatter:3air if block ~1.5 ~0.5 ~-0.5 #wancomatter:3air if block ~1.5 ~-0.5 ~0.5 #wancomatter:3air if block ~1.5 ~-0.5 ~-0.5 #wancomatter:3air if block ~-1.5 ~0.5 ~0.5 #wancomatter:3air if block ~-1.5 ~0.5 ~-0.5 #wancomatter:3air if block ~-1.5 ~-0.5 ~0.5 #wancomatter:3air if block ~-1.5 ~-0.5 ~-0.5 #wancomatter:3air if block ~0.5 ~0.5 ~1.5 #wancomatter:3air if block ~-0.5 ~0.5 ~1.5 #wancomatter:3air if block ~0.5 ~-0.5 ~1.5 #wancomatter:3air if block ~-0.5 ~-0.5 ~1.5 #wancomatter:3air if block ~0.5 ~0.5 ~-1.5 #wancomatter:3air if block ~-0.5 ~0.5 ~-1.5 #wancomatter:3air if block ~0.5 ~-0.5 ~-1.5 #wancomatter:3air if block ~-0.5 ~-0.5 ~-1.5 #wancomatter:3air run scoreboard players set #dummy subcounter 1
execute if block ~0.5 ~-1.5 ~0.5 #wancomatter:air unless block ~0.5 ~-1.5 ~0.5 #wancomatter:3air run scoreboard players set #dummy subcounter 0
execute if block ~-0.5 ~-1.5 ~0.5 #wancomatter:air unless block ~-0.5 ~-1.5 ~0.5 #wancomatter:3air run scoreboard players set #dummy subcounter 0
execute if block ~-0.5 ~-1.5 ~-0.5 #wancomatter:air unless block ~-0.5 ~-1.5 ~-0.5 #wancomatter:3air run scoreboard players set #dummy subcounter 0
execute if block ~0.5 ~-1.5 ~-0.5 #wancomatter:air unless block ~0.5 ~-1.5 ~-0.5 #wancomatter:3air run scoreboard players set #dummy subcounter 0
execute unless score #dummy subcounter matches 1 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute unless score #dummy subcounter matches 1 run title @s times 0 16 10
execute unless score #dummy subcounter matches 1 run title @s subtitle [{"text":"周囲に十分な空間がありません","color":"red"}]
execute unless score #dummy subcounter matches 1 run title @s title ""
execute unless score #dummy subcounter matches 1 run tag @s add failed
execute if score #dummy subcounter matches 1 run function wancomatter:skills/036/discharge
scoreboard players reset #dummy subcounter