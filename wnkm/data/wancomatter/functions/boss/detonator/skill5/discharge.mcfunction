scoreboard players set @s Cooldown5 240
tag @s add usedskill
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 5 0.5
execute as @e[tag=detonator] run scoreboard players set @s Cooldown1_max 25
execute as @e[tag=detonator] run effect give @s minecraft:luck 1 9 true
particle minecraft:end_rod ~ ~ ~ 1 1 1 1 200 normal @a
particle minecraft:end_rod ~ ~ ~ 1 1 1 1 50 force @a
execute if score @s HP <= @s maxMana run scoreboard players set @s Cooldown5_max 5
tag @s add b1s5
execute if score @s HP <= @s maxMana unless score @s Cooldown4 matches 1.. if score #difficult counter matches 3.. run function wancomatter:boss/detonator/skill4/discharge