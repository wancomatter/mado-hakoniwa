execute if score #difficult counter matches 3..4 run summon minecraft:lightning_bolt ~ ~ ~
execute if score #difficult counter matches 3..4 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 1
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #3 counter
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken /= #2 counter
advancement revoke @s only wancomatter:boss/sils_trident