scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-kusaJudge
execute as @e[type=armor_stand,tag=kusaCharge,scores={counter=20..}] if score @s playerNumber = #dummy playerNumber as @a[tag=now-kusaJudge] at @s run tag @s add now-kusaChargerun
tag @s remove now-kusaJudge
execute unless entity @s[tag=now-kusaChargerun] run function wancomatter:skills/107/discharge1
execute if entity @s[tag=now-kusaChargerun] unless score @s Mana matches 11.. run function wancomatter:skills/fail
execute if entity @s[tag=now-kusaChargerun] if score @s Mana matches 11.. run function wancomatter:skills/107/discharge2
execute if entity @s[tag=now-kusaChargerun] run tag @s remove now-kusaChargerun
scoreboard players reset #dummy