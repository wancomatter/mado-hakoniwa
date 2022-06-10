scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=summon_bomb,tag=!bomb-invisible] if score @s ownerNumber = #dummy playerNumber run tag @s add bomb-command
execute unless entity @e[tag=bomb-command,limit=1] unless entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/fail
execute unless entity @e[tag=bomb-command,limit=1] if entity @s[scores={Mana=6..,CooldownX=..0}] run function wancomatter:skills/030/summon
execute if entity @e[tag=bomb-command,limit=1] at @s run function wancomatter:skills/030/command

tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy