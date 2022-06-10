execute store result score #-- dummy run data get entity @s ActiveEffects[{Id:25b,Amplifier:0b}].Duration
execute if score #-- dummy matches 190.. run scoreboard players operation @s damageTaken *= #2 counter
execute if score #-- dummy matches 190.. run effect clear @s levitation
tag @s add magicDamage