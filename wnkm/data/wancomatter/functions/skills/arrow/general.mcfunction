scoreboard players reset @s dummy
execute if entity @s[scores={egg_skeleton=1..},nbt={SelectedItem:{id:"minecraft:skeleton_spawn_egg"}}] run scoreboard players set @s dummy 1
execute if entity @s[scores={egg_blaze=1..},nbt={SelectedItem:{id:"minecraft:blaze_spawn_egg"}}] run scoreboard players set @s dummy 2
execute if entity @s[scores={egg_stray=1..},nbt={SelectedItem:{id:"minecraft:stray_spawn_egg"}}] run scoreboard players set @s dummy 3
execute if entity @s[scores={egg_cave_spider=1..},nbt={SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}}] run scoreboard players set @s dummy 4
execute if entity @s[scores={egg_witch=1..},nbt={SelectedItem:{id:"minecraft:witch_spawn_egg"}}] run scoreboard players set @s dummy 5
execute if entity @s[scores={egg_creeper=1..},nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] run scoreboard players set @s dummy 6
execute if entity @s[scores={egg_magma_cube=1..},nbt={SelectedItem:{id:"minecraft:magma_cube_spawn_egg"}}] run scoreboard players set @s dummy 7
execute if entity @s[scores={egg_pufferfish=1..},nbt={SelectedItem:{id:"minecraft:pufferfish_spawn_egg"}}] run scoreboard players set @s dummy 8
execute if entity @s[scores={egg_drowned=1..},nbt={SelectedItem:{id:"minecraft:drowned_spawn_egg"}}] run scoreboard players set @s dummy 9

execute unless score @s dummy matches 1.. run tag @s add failed
execute if score @s dummy matches 1.. at @s run function wancomatter:skills/arrow/launcher
scoreboard players reset @s dummy

execute if entity @s[tag=failed] run tag @s remove failed

scoreboard players reset @s egg_skeleton
scoreboard players reset @s egg_blaze
scoreboard players reset @s egg_stray
scoreboard players reset @s egg_cave_spider
scoreboard players reset @s egg_witch
scoreboard players reset @s egg_creeper
scoreboard players reset @s egg_magma_cube
scoreboard players reset @s egg_pufferfish
scoreboard players reset @s egg_drowned