effect give @s blindness 2 0 true
effect give @s minecraft:slowness 1 0 true
execute if entity @e[tag=065,limit=1,sort=nearest,scores={counter=40}] run function wancomatter:skills/065/effect
execute if entity @s[tag=damagetaken] run function wancomatter:skills/065/damaged
execute unless entity @e[tag=065,limit=1,sort=nearest,distance=..0.35] run function wancomatter:skills/065/end
scoreboard players operation @e[tag=065,limit=1,sort=nearest] subcounter = @s HP
