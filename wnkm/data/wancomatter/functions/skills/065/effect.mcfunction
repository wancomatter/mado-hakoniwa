scoreboard players set @s dummy 40
scoreboard players operation @s dummy *= @s healPower
scoreboard players operation @s dummy /= #100 counter
scoreboard players operation @s HPheal = @s dummy
scoreboard players add @s Mana 3
execute if score @s Cooldown1 matches 1.. run scoreboard players remove @s Cooldown1 20
execute if score @s Cooldown2 matches 1.. run scoreboard players remove @s Cooldown2 20
execute if score @s Cooldown3 matches 1.. run scoreboard players remove @s Cooldown3 20
execute if score @s Cooldown4 matches 1.. run scoreboard players remove @s Cooldown4 20
execute if score @s Cooldown5 matches 1.. run scoreboard players remove @s Cooldown5 20
execute if score @s Cooldown6 matches 1.. run scoreboard players remove @s Cooldown6 20
execute if score @s Cooldown7 matches 1.. run scoreboard players remove @s Cooldown7 20
execute if score @s Cooldown8 matches 1.. run scoreboard players remove @s Cooldown8 20
execute if score @s Cooldown9 matches 1.. run scoreboard players remove @s Cooldown9 20


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.45 2
particle minecraft:dust 0 0.6 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a
particle minecraft:dust 0 0.6 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 20 normal @s

scoreboard players set @e[tag=065,scores={counter=40}] counter 0