tag @s add holy_bell_pl
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=holy_bell_stand] if score @s playerNumber = #dummy playerNumber run tag @s add holy_bell_now
scoreboard players add @e[tag=holy_bell_now] counter 1
execute if score @e[tag=holy_bell_now,limit=1] counter matches 7.. unless score @e[tag=holy_bell_now,limit=1] subcounter matches 7.. at @s run function wancomatter:skills/015/ring
execute if score @e[tag=holy_bell_now,limit=1] subcounter matches 7..8 at @s rotated as @s run function wancomatter:skills/015/wave
execute if score @e[tag=holy_bell_now,limit=1] subcounter matches 7..8 run scoreboard players set @s dummy 0
execute as @e[tag=holy_bell_now] if score @s counter matches 7.. run scoreboard players add @e[tag=holy_bell_now] subcounter 1
execute as @e[tag=holy_bell_now] if score @s counter matches 7.. run scoreboard players set @e[tag=holy_bell_now] counter 0
execute if entity @e[tag=holy_bell_now,limit=1,scores={subcounter=9..,counter=3..}] run tag @s remove holy-bell
execute as @e[tag=holy_bell_now] if score @s subcounter matches 9.. if score @s counter matches 3.. run function wancomatter:skills/015/care
tag @e[tag=holy_bell_now] remove holy_bell_now
tag @s remove holy_bell_pl