particle minecraft:enchanted_hit ~ ~-0.2 ~ 0 0 0 0 1 force @a
particle minecraft:end_rod ~ ~-0.2 ~ 0 0 0 0 1 force @a
#playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 2
playsound minecraft:entity.ender_eye.death master @a ~ ~-0.2 ~ 1 1
execute positioned ~ ~-0.2 ~ unless entity @e[tag=portal_pearl,distance=..0.1] run tag @s add flag
execute if entity @s[tag=flag] run function wancomatter:skills/056/set_portal
execute unless entity @s[tag=flag] store result score @s Cooldown1 run data get entity @s Pos[0] 1000
execute unless entity @s[tag=flag] store result score @s Cooldown2 run data get entity @s Pos[1] 1000
execute unless entity @s[tag=flag] store result score @s Cooldown3 run data get entity @s Pos[2] 1000
