execute if entity @s[type=armor_stand,tag=stop] as @s at @s positioned ~ ~0.5 ~ run function wancomatter:skills/021/poison
execute if entity @s[type=armor_stand,tag=!stop] as @s at @s run function wancomatter:skills/021/tick-stand

scoreboard players add @s counter 1
execute if score @s counter matches 160.. run kill @s
