execute as @a[scores={maxHP=1..}] run scoreboard players operation @s boss_hate = @s boss_hate2
execute as @a[scores={maxHP=1..}] run scoreboard players set @s boss_hate2 0
execute if score @s subcounter matches 9.. run scoreboard players set @s subcounter 0