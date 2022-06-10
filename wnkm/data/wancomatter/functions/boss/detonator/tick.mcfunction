scoreboard players add @s counter 1
execute store result bossbar minecraft:detonator value run scoreboard players get @s HP

execute if entity @s[scores={Cooldown1=1..}] if score @s HP <= @s maxMana run scoreboard players set @s Cooldown1 0
execute if entity @s[scores={Cooldown5=1..}] if score @s HP <= @s maxMana run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @s[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1

execute if entity @s[y=7,dy=-30] run function wancomatter:boss/detonator/return
execute unless score @s Cooldown9 matches 1.. if score @s HP <= @s Mana if entity @a[distance=12.5..64,tag=damagetaken,limit=1] run tag @a[distance=12.5..64,tag=damagetaken,limit=1,sort=nearest] add b1s9target
execute if score #difficult counter matches 3..4 unless score @s Cooldown8 matches 1.. if score @s HP <= @s Mana unless entity @a[tag=b1s9target] if entity @a[distance=12.5..64,tag=damagetaken,limit=1] run tag @a[distance=12.5..64,tag=damagetaken,limit=1,sort=nearest] add b1s9target2
execute unless score @s Cooldown9 matches 1.. if score @s HP <= @s Mana if entity @a[tag=b1s9target] run function wancomatter:boss/detonator/skill9/discharge
execute if score #difficult counter matches 3..4 unless score @s Cooldown8 matches 1.. if score @s HP <= @s Mana if entity @a[tag=b1s9target2] run function wancomatter:boss/detonator/skill9/discharge2
execute if score #difficult counter matches 3..4 unless score @s Cooldown3 matches 1.. if entity @a[distance=..8,gamemode=!spectator] run function wancomatter:boss/detonator/skill3/discharge
execute if score #difficult counter matches 3..4 if score @s HP <= @s Mana unless score @s Cooldown2 matches 1.. unless entity @a[distance=..16,gamemode=!spectator] run function wancomatter:boss/detonator/skill2/discharge
execute unless score #difficult counter matches 3..4 if score @s HP <= @s Mana unless score @s Cooldown2 matches 1.. unless entity @a[distance=..25,gamemode=!spectator] run function wancomatter:boss/detonator/skill2/discharge
execute if entity @s[tag=usedskill] run tag @s remove usedskill

execute if score @s counter matches 100.. run function wancomatter:boss/detonator/useskill
execute if score @s counter matches 100.. unless score @s HP <= @s Mana run scoreboard players set @s counter -10
execute if score @s counter matches 100.. run scoreboard players set @s counter 0

execute if score #difficult counter matches 3..4 if score @s HP <= @s maxMana if score @s subcounter matches 4 if score @s counter matches 99 run function wancomatter:boss/detonator/skill23/discharge

execute if entity @s[scores={Cooldown7_max=1..}] run summon lightning_bolt ~ ~ ~
execute if entity @s[scores={Cooldown7_max=1..}] run scoreboard players remove @s Cooldown7_max 1
execute if entity @s[scores={Cooldown1_max=22}] run effect give @s luck 1 9 true
execute if entity @s[scores={Cooldown1_max=1..}] unless data entity @s {Fire:-1s} run data merge entity @s {Fire:-1s}
execute if entity @s[scores={Cooldown1_max=1..}] run scoreboard players remove @s Cooldown1_max 1
tag @a[tag=b1s9targeted] remove b1s9targeted
execute if score @s HP matches ..0 run function wancomatter:boss/detonator/defeat

execute unless entity @s[tag=b1s21used] if score @s HP <= @s Mana run function wancomatter:boss/detonator/skill21/discharge
execute unless entity @s[tag=b1s22used] if score @s HP <= @s maxMana run function wancomatter:boss/detonator/skill22/discharge