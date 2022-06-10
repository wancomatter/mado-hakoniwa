scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @e[tag=summon_horse,limit=1] as @e[tag=summon_horse] if score @s ownerNumber = #dummy playerNumber run tag @s add your_horse
execute unless entity @e[tag=your_horse,limit=1] unless entity @s[scores={Mana=24..,CooldownX=..0}] run function wancomatter:skills/fail
execute unless entity @e[tag=your_horse,limit=1] if entity @s[scores={Mana=24..,CooldownX=..0}] run function wancomatter:skills/033/discharge
execute if entity @e[tag=your_horse,limit=1] at @e[tag=your_horse] run function wancomatter:skills/033/gale