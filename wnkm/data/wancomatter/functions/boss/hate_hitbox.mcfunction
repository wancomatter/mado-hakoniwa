execute if entity @s[tag=sils_hitbox] run scoreboard players operation @e[tag=sils,limit=1,sort=nearest] HP -= @s damageTaken
execute if entity @s[tag=sils_hitbox] run particle minecraft:block minecraft:glass ~ ~1 ~ 1 1 1 1 50 force @a
execute if entity @s[tag=sils_hitbox] run particle minecraft:block minecraft:glass ~ ~1 ~ 1 1 1 1 200 normal @a
execute if entity @s[tag=sils_hitbox] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.6

execute if entity @s[tag=dragon1_hitbox] run tag @s add this
execute if entity @s[tag=dragon1_hitbox] as @e[tag=dragon1_stand_body] if score @s playerNumber = @e[tag=this,limit=1] ownerNumber run tag @s add flag
execute if entity @s[tag=dragon1_hitbox] run tag @s remove this
execute if entity @e[tag=flag,limit=1] run scoreboard players operation @e[tag=flag] HP -= @s damageTaken
execute if entity @e[tag=flag,limit=1] run scoreboard players operation @e[tag=flag] boss_hate += @s damageTaken
execute if entity @e[tag=flag,limit=1] run scoreboard players operation @e[tag=flag] boss_hate2 += @s damageTaken
execute if entity @s[tag=dragon1_hitbox] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 100 1

scoreboard players reset @s damageTaken
