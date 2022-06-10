execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this] at @s run function wancomatter:skills/045/move
execute if score #dummy counter matches ..250 run title @s times 0 16 10
execute if score #dummy counter matches ..250 run title @s subtitle {"text":"飛距離が足りません","color":"red"}
execute if score #dummy counter matches ..250 run title @s title ""
execute if score #dummy counter matches ..250 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute if score #dummy counter matches ..250 run tag @s add failed
execute unless score #dummy counter matches ..250 run scoreboard players remove @s Mana 10
execute unless score #dummy counter matches ..250 run scoreboard players set @s CooldownX 200
execute unless score #dummy counter matches ..250 run scoreboard players set @s CooldownX_max 200
execute unless score #dummy counter matches ..250 run tag @s add firecircle_p
scoreboard players reset #dummy
kill @e[tag=this]
