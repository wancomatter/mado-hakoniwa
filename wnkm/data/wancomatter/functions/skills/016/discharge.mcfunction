execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["discharge"]}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=discharge,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #dummy healPower = @s healPower
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add user
execute as @e[tag=discharge] at @s run function wancomatter:skills/016/move
execute if score #dummy counter matches ..59 run title @s times 0 16 10
execute if score #dummy counter matches ..59 run title @s subtitle {"text":"飛距離が足りません","color":"red"}
execute if score #dummy counter matches ..59 run title @s title ""
execute if score #dummy counter matches ..59 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute if score #dummy counter matches ..59 run tag @s add failed
execute unless score #dummy counter matches ..59 run scoreboard players remove @s Mana 21
execute unless score #dummy counter matches ..59 run scoreboard players set @s CooldownX 300
execute unless score #dummy counter matches ..59 run scoreboard players set @s CooldownX_max 300
tag @s remove user
scoreboard players reset #dummy
kill @e[tag=discharge]