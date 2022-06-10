playsound minecraft:block.bell.use master @a ~ ~ ~ 2.5 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1
execute rotated as @s run function wancomatter:skills/015/ring-particle
execute if score @e[tag=holy_bell_now,limit=1] subcounter matches 6 run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 2.5 2
scoreboard players set @s dummy 0