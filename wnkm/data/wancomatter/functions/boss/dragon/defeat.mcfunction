execute if entity @a[scores={maxHP=1..},gamemode=!spectator,limit=1] run function wancomatter:boss/dragon/defeat_log
scoreboard players operation #dragonBoss playerNumber = @s playerNumber
execute as @e[tag=boss_dragon_parts] if score @s ownerNumber = #dragonBoss playerNumber run kill @s
execute as @e[tag=dragon_entity] if score @s playerNumber = #dragonBoss playerNumber run kill @s
scoreboard players reset #dragonBoss

execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate2=1..}] boss_hate2
bossbar remove minecraft:dragon1
scoreboard players reset @s maxMana
kill @s