execute store result score @s Cooldown5 run data get entity @s Pos[0] 100
execute store result score @s Cooldown6 run data get entity @s Pos[2] 100
execute if score @s Cooldown3 = @s Cooldown5 run data modify entity @s Motion[1] set value 0.35d
execute if score @s Cooldown4 = @s Cooldown6 run data modify entity @s Motion[1] set value 0.35d
