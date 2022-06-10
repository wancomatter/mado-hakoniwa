scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=summon_knight] if score @s ownerNumber = #dummy playerNumber run tag @s add knight-command
execute unless entity @e[tag=knight-command,limit=1] unless score @s Mana matches 10.. run function wancomatter:skills/fail
execute unless entity @e[tag=knight-command,limit=1] if score @s Mana matches 10.. run function wancomatter:skills/029/summon
execute if entity @e[tag=knight-command,limit=1] run scoreboard players remove @s Mana 4
execute if entity @e[tag=knight-command,limit=1] run scoreboard players set @s CooldownX 120
execute if entity @e[tag=knight-command,limit=1] run scoreboard players set @s CooldownX_max 120
execute if entity @e[tag=knight-command,limit=1] store result score @s s29slot run data get entity @s SelectedItemSlot
execute if entity @e[tag=knight-command,limit=1] at @s rotated ~ 0 positioned ^ ^ ^2 rotated ~ ~ as @e[tag=knight-command] run function wancomatter:skills/029/command

tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy