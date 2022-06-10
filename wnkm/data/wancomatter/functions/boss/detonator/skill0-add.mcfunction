execute as @e[tag=detonator] at @s facing entity @a[scores={maxHP=1..},sort=nearest,limit=1] feet rotated ~ 0 positioned 0.0 0.3 0.0 run summon minecraft:armor_stand ^ ^ ^1.5 {Tags:["discharge"],NoGravity:1b,Marker:1b,Invisible:1b}
data modify entity @e[tag=detonator,limit=1] Motion set from entity @e[tag=discharge,limit=1] Pos
kill @e[tag=discharge]
execute at @e[tag=detonator] run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=detonator] run scoreboard players set @s Cooldown1_max 34
execute as @e[tag=detonator] run scoreboard players set @s Cooldown7_max 9
execute as @e[tag=detonator] run effect give @s minecraft:luck 1 9 true
particle minecraft:poof ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
