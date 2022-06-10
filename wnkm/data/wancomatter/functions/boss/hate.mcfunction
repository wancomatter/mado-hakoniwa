scoreboard players operation @e[tag=hurtBy,limit=1] boss_hate += @s damageTaken
scoreboard players operation @e[tag=hurtBy,limit=1] boss_hate2 += @s damageTaken
execute if entity @s[tag=detonator] if score @s damageTaken matches 1.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 4 0.85
execute if entity @s[tag=kirito] if score @s damageTaken matches 1.. run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 4 0.6
execute if entity @s[tag=dusk] if score @s damageTaken matches 1.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 4 0.85
execute if entity @s[tag=dusk] if score @s damageTaken matches 1.. run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 4 0.85
execute if entity @s[tag=necro] if score @s damageTaken matches 1.. run playsound minecraft:entity.player.hurt master @a ~ ~ ~ 4 0.6
execute if entity @s[tag=arctic] if score @s damageTaken matches 1.. run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.6
execute if entity @s[tag=arctic] if score @s damageTaken matches 1.. run particle minecraft:block minecraft:iron_block ~ ~1 ~ 0.5 0.8 0.5 1 20 force
#execute if entity @s[tag=sils_hitbox] run scoreboard players operation @e[tag=sils,limit=1,sort=nearest] HP = @s HP
