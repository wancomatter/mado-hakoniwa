execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 120
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 0
execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 2
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0
schedule function wancomatter:boss/necro/skill4/2 20t

playsound minecraft:entity.skeleton_horse.death master @a ~ ~3 ~ 4 0.8
particle minecraft:flash ~ ~3 ~ 1 1 1 1 10
summon item ~ ~3 ~ {Age:5980,PickupDelay:100s,Item:{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:105}},NoGravity:1b}

execute as @e[tag=necro_s4skeleton] run data merge entity @s {Health:0f,Silent:1b}
scoreboard players set #dummy counter 24
execute rotated 000 0 positioned ~ 4.1 ~ run function wancomatter:boss/necro/skill4/loop
scoreboard players reset #dummy
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] maxHP 60
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] maxHP 80
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] maxHP 120
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] maxHP 180
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] magicResist 20
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] magicResist 30
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] magicResist 40
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] magicResist 50
effect give @e[tag=first] luck 3 9 true
scoreboard players set @e[tag=first] counter 59
tag @e[tag=first,sort=random,limit=6] add necro_s4sound
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute at @e[tag=first] facing entity @s feet as @e[tag=first,limit=1,sort=nearest,distance=..1] run tp @s ~ ~ ~ ~18 0
tag @e[tag=first] remove first
