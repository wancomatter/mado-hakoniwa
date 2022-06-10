scoreboard players remove @s Mana 16
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200

summon marker ~ ~ ~ {Tags:["holy-spring","discharge"]}
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players set @e[tag=discharge,limit=1] healPower 15
scoreboard players operation @e[tag=discharge,limit=1] healPower *= @s healPower
scoreboard players operation @e[tag=discharge,limit=1] healPower /= #100 counter
execute if entity @e[tag=heal-hit,limit=1] as @e[tag=heal-hit] run scoreboard players operation @s HPheal += #dummy HPheal
tag @e[tag=discharge] remove discharge