summon armor_stand 0.0 0.0 0.0 {Tags:["discharge"],Invisible:1b,Marker:1b,NoGravity:1b}
execute store result entity @e[tag=discharge,limit=1] Pos[0] double 0.001 run scoreboard players get @s Cooldown1
execute store result entity @e[tag=discharge,limit=1] Pos[1] double 0.001 run scoreboard players get @s Cooldown2
execute store result entity @e[tag=discharge,limit=1] Pos[2] double 0.001 run scoreboard players get @s Cooldown3
execute positioned 0.0 0.0 0.0 facing entity @e[tag=discharge,limit=1,sort=nearest] feet positioned as @s run tp @s ~ ~ ~ ~ ~
kill @e[tag=discharge]
#ブロック端判定
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~