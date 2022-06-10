summon marker ~ ~ ~ {Tags:["shoen_gun","shoen_init","discharge"]}
tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~

data merge storage random: {min:-19,max:20}
execute store result score #score_tp counter run function wancomatter:operation/random
scoreboard players operation #score_tp counter *= #dummy SelectItemSlot1
execute as @e[tag=discharge,limit=1] run function wancomatter:operation/score_tp/local_x
data merge storage random: {min:-10,max:11}
execute store result score #score_tp counter run function wancomatter:operation/random
scoreboard players operation #score_tp counter *= #dummy SelectItemSlot1
execute as @e[tag=discharge,limit=1] run function wancomatter:operation/score_tp/local_y
execute as @e[tag=discharge,limit=1] at @s run tp @s ^ ^ ^10.0
execute as @e[tag=discharge,limit=1] facing entity @s feet run tp @s ^ ^ ^ ~ ~

tag @e[tag=discharge] remove discharge

scoreboard players remove #dummy dummy 1
execute if score #dummy dummy matches 1.. run function wancomatter:skills/025/shot-