playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 2 1
particle minecraft:flash ~ ~ ~ 0 0 0 1 8 normal @a
particle minecraft:flash ~ ~ ~ 0 0 0 1 2 force @a
particle minecraft:dragon_breath ~ ~ ~ 2 2 2 0.5 500 normal @a
particle minecraft:dragon_breath ~ ~ ~ 2 2 2 0.5 125 force @a

execute if score @s Cooldown1 matches 0.. run scoreboard players set @s Cooldown1 0
execute if score @s Cooldown2 matches 0.. run scoreboard players set @s Cooldown2 0
execute if score @s Cooldown3 matches 0.. run scoreboard players set @s Cooldown3 0
execute if score @s Cooldown4 matches 0.. run scoreboard players set @s Cooldown4 0
execute if score @s Cooldown5 matches 0.. run scoreboard players set @s Cooldown5 0
execute if score @s Cooldown6 matches 0.. run scoreboard players set @s Cooldown6 0
execute if score @s Cooldown7 matches 0.. run scoreboard players set @s Cooldown7 0
execute if score @s Cooldown8 matches 0.. run scoreboard players set @s Cooldown8 0
execute if score @s Cooldown9 matches 0.. run scoreboard players set @s Cooldown9 0
