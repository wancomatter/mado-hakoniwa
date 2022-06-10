scoreboard players remove @s Mana 15
scoreboard players set @s CooldownX 200
scoreboard players set @s CooldownX_max 200

tag @s add holy-bell
summon marker 0 0 0 {Tags:["holy_bell_stand","discharge"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=discharge,limit=1] teamNumber = @s teamNumber
scoreboard players set @e[tag=discharge] counter 7
tag @e[tag=discharge] remove discharge