execute if score @s s83slot matches 0 run scoreboard players add @s Cooldown1 301
execute if score @s s83slot matches 0 run scoreboard players operation @s Cooldown1_max = @s Cooldown1
execute if score @s s83slot matches 1 run scoreboard players add @s Cooldown2 301
execute if score @s s83slot matches 1 run scoreboard players operation @s Cooldown2_max = @s Cooldown2
execute if score @s s83slot matches 2 run scoreboard players add @s Cooldown3 301
execute if score @s s83slot matches 2 run scoreboard players operation @s Cooldown3_max = @s Cooldown3
execute if score @s s83slot matches 3 run scoreboard players add @s Cooldown4 301
execute if score @s s83slot matches 3 run scoreboard players operation @s Cooldown4_max = @s Cooldown4
execute if score @s s83slot matches 4 run scoreboard players add @s Cooldown5 301
execute if score @s s83slot matches 4 run scoreboard players operation @s Cooldown5_max = @s Cooldown5
execute if score @s s83slot matches 5 run scoreboard players add @s Cooldown6 301
execute if score @s s83slot matches 5 run scoreboard players operation @s Cooldown6_max = @s Cooldown6
execute if score @s s83slot matches 6 run scoreboard players add @s Cooldown7 301
execute if score @s s83slot matches 6 run scoreboard players operation @s Cooldown7_max = @s Cooldown7
execute if score @s s83slot matches 7 run scoreboard players add @s Cooldown8 301
execute if score @s s83slot matches 7 run scoreboard players operation @s Cooldown8_max = @s Cooldown8
execute if score @s s83slot matches 8 run scoreboard players add @s Cooldown9 301
execute if score @s s83slot matches 8 run scoreboard players operation @s Cooldown9_max = @s Cooldown9
scoreboard players add @s s83slot 1
execute store result entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:83}}].tag.usedSkillSlot byte 1 run scoreboard players get @s s83slot
scoreboard players remove @s s83slot 1
tag @s remove p.wolf
