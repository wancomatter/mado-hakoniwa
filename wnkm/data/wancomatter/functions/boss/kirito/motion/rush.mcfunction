execute unless entity @a[tag=b2target,limit=1] as @a[gamemode=!spectator,distance=..12] run scoreboard players operation #dummy dummy > @s boss_hate
execute unless entity @a[tag=b2target,limit=1] if score #dummy dummy matches 1.. as @a[gamemode=!spectator,distance=..12] if score @s boss_hate >= #dummy dummy run tag @s add b2target
tp @s ~ ~ ~ facing entity @a[tag=b2target,limit=1,sort=nearest] eyes
execute store result score #dummy Cooldown1 run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @a[tag=b2target,limit=1] Pos[0] 10
execute store result entity @s Motion[0] double 0.018 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown3 run data get entity @s Pos[2] 10
execute store result score #dummy Cooldown4 run data get entity @a[tag=b2target,limit=1] Pos[2] 10
execute store result entity @s Motion[2] double 0.018 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
data modify entity @s Motion[1] set value 0.35d
scoreboard players set @s subcounter2 1
scoreboard players set @s subcounter -7