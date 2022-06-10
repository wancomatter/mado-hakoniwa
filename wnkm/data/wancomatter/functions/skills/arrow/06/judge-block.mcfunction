summon armor_stand 0.0 0.0 0.0 {Tags:["this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute store result entity @e[tag=this,limit=1] Pos[0] double 0.01 run scoreboard players get @s Cooldown1
execute store result entity @e[tag=this,limit=1] Pos[1] double 0.01 run scoreboard players get @s Cooldown2
execute store result entity @e[tag=this,limit=1] Pos[2] double 0.01 run scoreboard players get @s Cooldown3
execute positioned 0.0 0.0 0.0 facing entity @e[tag=this,limit=1,sort=nearest] feet positioned as @s run tp @s ~ ~ ~ ~ ~

scoreboard players operation @s Cooldown1 *= @s Cooldown1
scoreboard players operation @s Cooldown2 *= @s Cooldown2
scoreboard players operation @s Cooldown3 *= @s Cooldown3
scoreboard players operation @s Cooldown1 /= #100 counter
scoreboard players operation @s Cooldown2 /= #100 counter
scoreboard players operation @s Cooldown3 /= #100 counter
scoreboard players operation @s Cooldown1 += @s Cooldown2
scoreboard players operation @s Cooldown1 += @s Cooldown3
#ブロック端判定
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.2 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.05 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ^ ^ ^0.025 if block ~ ~ ~ #wancomatter:air unless entity @e[distance=..0.6,scores={maxHP=1..}] positioned ~ ~-1 ~ unless entity @e[distance=..0.6,scores={maxHP=1..}] run tp @s ~ ~1 ~
execute at @s positioned ~ ~-0.9 ~ if entity @e[distance=..0.8,scores={maxHP=1..}] if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ~ ~-0.6 ~ if entity @e[distance=..0.8,scores={maxHP=1..}] if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ~ ~-0.3 ~ if entity @e[distance=..0.8,scores={maxHP=1..}] if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~

kill @e[tag=this]