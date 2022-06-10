scoreboard players add @s counter 1

execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[0] float 0.01 run scoreboard players add @s subcounter 1440
execute if entity @s[x_rotation=-90..-55] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s subcounter2
execute if entity @s[x_rotation=-90..-55] at @s rotated ~ ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~45 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~90 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~135 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~180 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 force @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~225 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~270 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute if entity @s[x_rotation=-90..-55] at @s rotated ~315 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] run tp @s ~ ~ ~ ~ ~12
execute unless entity @s[x_rotation=-90..-55] if entity @s[x_rotation=78..90] run tp @s ~ ~ ~ ~ ~-168
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~ run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~45 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~90 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~135 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~180 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 force @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~225 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~270 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a
execute unless entity @s[x_rotation=-90..-55] rotated ~90 ~315 run particle minecraft:flame ^ ^ ^3 0 0 0 0 1 normal @a

execute if score @s counter matches 11.. unless score #difficult counter matches 4 run summon creeper ~ -10 ~ {Tags:["this","b2_circleFire_creeper"],CustomName:'{"text":"サークルファイア","color":"red"}',PersistenceRequired:1b,ExplosionRadius:3b,Fuse:0s}
execute if score @s counter matches 11.. if score #difficult counter matches 4 run summon creeper ~ -10 ~ {Tags:["this","b2_circleFire_creeper"],CustomName:'{"text":"サークルファイア","color":"red"}',PersistenceRequired:1b,ExplosionRadius:4b,Fuse:0s}
execute if score @s counter matches 11.. run tp @e[tag=this,limit=1] ~ ~ ~
execute if score @s counter matches 11.. run tag @e[tag=this] remove this
execute if score @s counter matches 11.. run kill @s