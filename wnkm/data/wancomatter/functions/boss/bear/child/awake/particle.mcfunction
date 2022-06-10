playsound entity.generic.explode master @a ~ ~ ~ 4 1
particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
particle poof ~ ~ ~ 1 1 1 1 200 normal @a
scoreboard players add @s subcounter2 1
execute unless score @s subcounter2 matches 8.. run scoreboard players set @s subcounter 5
execute if score @s subcounter2 matches 8..15 run scoreboard players set @s subcounter 4
execute if score @s subcounter2 matches 16..23 run scoreboard players set @s subcounter 3
execute if score @s subcounter2 matches 24..31 run scoreboard players set @s subcounter 2
execute if score @s subcounter2 matches 32.. run scoreboard players set @s subcounter 1