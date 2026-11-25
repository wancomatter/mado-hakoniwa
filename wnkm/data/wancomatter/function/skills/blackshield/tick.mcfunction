execute unless score @s counter matches 200.. run scoreboard players add @s counter 1
execute if score @s counter matches 200.. run tag @s add nowBlackShield
execute if score @s counter matches 200 as @a[tag=offBlackShield,scores={Mana=10..}] if score @s playerNumber = @e[tag=nowBlackShield,limit=1] playerNumber at @s run function wancomatter:skills/blackshield/load-complete
execute if score @s counter matches 201.. as @a[tag=offBlackShield,gamemode=!spectator] if score @s playerNumber = @e[tag=nowBlackShield,limit=1] playerNumber at @s run function wancomatter:skills/blackshield/tick2
execute if score @s counter matches 200.. run tag @s remove nowBlackShield
