execute as @a[tag=hide-focused] run effect clear @s minecraft:speed
execute as @a[tag=hide-focused] run effect clear @s minecraft:invisibility
execute as @a[tag=hide-focused] if entity @s[scores={bless1=8}] run effect give @s minecraft:speed 100000 0
execute as @a[tag=hide-focused] if entity @s[scores={bless2=8}] run effect give @s minecraft:speed 100000 0
execute as @a[tag=hide-focused] if entity @s[scores={bless1=8}] if entity @s[scores={bless2=8}] run effect give @s minecraft:speed 100000 1
execute positioned as @a[tag=hide-focused] run playsound minecraft:block.wool.break master @a ~ ~ ~ 1 1
execute positioned as @a[tag=hide-focused] run playsound minecraft:block.wool.break master @a ~ ~ ~ 1 1
execute positioned as @a[tag=hide-focused] run particle minecraft:dust 0 0 0 0.4 ~ ~ ~ 1 1 1 1 400 normal @a
scoreboard players set @s counter 10800

tag @a[tag=hide-focused,tag=!s12used] remove hide-focused
tag @a[tag=hide-focused,tag=s12used] remove s12used
execute as @a[tag=hide-focused] run function wancomatter:skills/012/add_ct
