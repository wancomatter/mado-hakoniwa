execute if entity @s[type=ender_dragon] run tag @s add largeEntity
execute if entity @s[type=ghast] run tag @s add largeEntity
execute if entity @s[type=giant] run tag @s add largeEntity

execute if entity @s[type=elder_guardian] run tag @s add largeEntity
execute if entity @s[type=ravager] run tag @s add largeEntity
execute if entity @s[type=iron_golem] run tag @s add largeEntity

execute if entity @s[type=phantom] store result score @s dummy run data get entity @s Size 1
execute if entity @s[type=phantom] if score @s dummy matches 12.. run tag @s add largeEntity
execute if entity @s[type=slime] store result score @s dummy run data get entity @s Size 1
execute if entity @s[type=slime] if score @s dummy matches 6.. run tag @s add largeEntity
execute if entity @s[type=magma_cube] store result score @s dummy run data get entity @s Size 1
execute if entity @s[type=magma_cube] if score @s dummy matches 6.. run tag @s add largeEntity

execute if entity @s[type=drowned] run tag @s add undead
execute if entity @s[type=husk] run tag @s add undead
execute if entity @s[type=phantom] run tag @s add undead
execute if entity @s[type=skeleton] run tag @s add undead
execute if entity @s[type=skeleton_horse] run tag @s add undead
execute if entity @s[type=stray] run tag @s add undead
execute if entity @s[type=wither] run tag @s add undead
execute if entity @s[type=wither_skeleton] run tag @s add undead
execute if entity @s[type=zombie] run tag @s add undead
execute if entity @s[type=zombie_horse] run tag @s add undead
execute if entity @s[type=zombified_piglin] run tag @s add undead
execute if entity @s[type=zombie_villager] run tag @s add undead

execute if entity @s[type=zombie] run tag @s add type_zombie
execute if entity @s[type=husk] run tag @s add type_zombie
execute if entity @s[type=zombified_piglin] run tag @s add type_zombie
execute if entity @s[type=zombie_villager] run tag @s add type_zombie

execute if entity @s[type=slime] run function wancomatter:general/mob-first-slime
execute if entity @s[type=magma_cube] run function wancomatter:general/mob-first-slime

scoreboard players set @s damageTaken 0
execute store result score @s maxHP run data get entity @s AbsorptionAmount 1
scoreboard players operation @s HP = @s maxHP
data remove entity @s AbsorptionAmount
tag @s remove mobInit
