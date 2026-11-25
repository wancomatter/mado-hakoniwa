execute unless score @s counter matches 90.. run scoreboard players add @s counter 1
execute if score @s counter matches 90.. run tag @s add now
execute if score @s counter matches 90 as @a[tag=offKnightShield,scores={Mana=6..}] if score @s playerNumber = @e[tag=now,limit=1] playerNumber at @s run function wancomatter:skills/knightshield/load-complete
execute if score @s counter matches 91.. as @a[tag=offKnightShield,gamemode=!spectator,scores={Mana=6..,sneak=1..}] if score @s playerNumber = @e[tag=now,limit=1] playerNumber at @s run function wancomatter:skills/knightshield/action
execute if score @s counter matches 90.. run tag @s remove now
