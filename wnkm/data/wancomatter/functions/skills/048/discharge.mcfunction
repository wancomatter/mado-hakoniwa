#コスト支払い
scoreboard players remove @s Mana 0
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

effect give @s minecraft:slowness 2 2 true
clear @s #wancomatter:gamble_stew{gambleStew:1b}
summon marker ~ ~ ~ {Tags:["discharge","gamble_stew_stand"]}
scoreboard players operation @e[tag=discharge,limit=1] playerNumber = @s playerNumber
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy