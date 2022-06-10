execute if score @s Cooldown8 matches 0.. run scoreboard players remove @s Cooldown8 1
execute if score @s Cooldown8 matches 1 run data merge entity @s {Marker:0b}
scoreboard players add @s counter 1
execute store result entity @s Pose.Head[1] float 1 run scoreboard players add @s Cooldown7 6
execute unless score @s Cooldown8 matches ..-2 if data entity @s {OnGround:1b} run data merge entity @s {Marker:1b,Glowing:1b,Team:"DarkRed"}
execute unless score @s Cooldown8 matches ..-2 if data entity @s {OnGround:1b} run scoreboard players set @s Cooldown8 -2
tag @s add now-dagger
execute if entity @a[distance=..1.2,limit=1] as @a[distance=..1.2] if score @s playerNumber = @e[tag=now-dagger,limit=1] playerNumber run function wancomatter:skills/106/pickup
execute positioned ~ ~-0.8 ~ if entity @a[distance=..1.2,limit=1] as @a[distance=..1.2] if score @s playerNumber = @e[tag=now-dagger,limit=1] playerNumber run function wancomatter:skills/106/pickup
tag @s remove now-dagger
execute if score @s counter >= @s Cooldown6 run kill @s