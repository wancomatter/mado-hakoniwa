scoreboard players add @s counter 1
execute store result bossbar minecraft:bear_p value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @s[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1

execute if score #difficult counter matches 3..4 if data entity @s {ActiveEffects:[{Id:2b}]} run effect clear @s slowness
execute if data entity @s {ActiveEffects:[{Id:25b,Amplifier:0b,Duration:199}]} run effect clear @s levitation

execute if entity @s[tag=usedskill] run scoreboard players set @s Cooldown3_max 0
execute if entity @s[tag=usedskill] run tag @s remove usedskill

scoreboard players operation #dummy boss_hate > @a[scores={maxHP=1..}] boss_hate
execute as @a[scores={maxHP=1..}] if score @s boss_hate = #dummy boss_hate facing entity @s feet run tag @s add must_target
execute if entity @a[tag=must_target,limit=1] unless score @s Cooldown2_max matches 32.. unless entity @a[tag=must_target,distance=..8,limit=1] run scoreboard players add @s Cooldown2_max 2
execute if score @s Cooldown2_max matches 1.. run scoreboard players remove @s Cooldown2_max 1
execute unless score @s Cooldown2 matches 1.. if score @s Cooldown2_max matches 31.. run function wancomatter:boss/bear/papa/skill2/charge
execute if entity @a[tag=must_target,limit=1] run tag @a[tag=must_target] remove must_target

scoreboard players add @s Cooldown3_max 1
execute unless score @s Cooldown3 matches 1.. unless score #difficult counter matches 2..4 if score @s Cooldown3_max matches 140.. run function wancomatter:boss/bear/papa/skill3/first
execute unless score @s Cooldown3 matches 1.. if score #difficult counter matches 2 if score @s Cooldown3_max matches 110.. run function wancomatter:boss/bear/papa/skill3/first
execute unless score @s Cooldown3 matches 1.. if score #difficult counter matches 3 if score @s Cooldown3_max matches 80.. run function wancomatter:boss/bear/papa/skill3/first
execute unless score @s Cooldown3 matches 1.. if score #difficult counter matches 4 if score @s Cooldown3_max matches 60.. run function wancomatter:boss/bear/papa/skill3/first

execute unless score @s Cooldown4 matches 1.. unless entity @s[tag=usedskill] run function wancomatter:boss/bear/papa/skill4/first


execute if score @s HP matches ..0 run function wancomatter:boss/bear/papa/defeat

