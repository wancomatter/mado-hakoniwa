scoreboard players set #dummy maxHP 10000
execute store result score #dummy counter run data get entity @s Health 10
scoreboard players operation #dummy counter -= #dummy maxHP
scoreboard players operation @s damageTaken -= #dummy counter
scoreboard players reset #dummy
execute unless entity @s[tag=!boss,tag=!boss_hitbox] if entity @s[tag=undead] run effect give @s minecraft:instant_damage 1 24
execute unless entity @s[tag=!boss,tag=!boss_hitbox] unless entity @s[tag=undead] run effect give @s minecraft:instant_health 1 24 true
execute if entity @s[tag=!boss,tag=!boss_hitbox] run data modify entity @s Health set value 1000f
