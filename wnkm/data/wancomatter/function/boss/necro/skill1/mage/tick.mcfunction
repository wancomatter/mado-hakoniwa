execute if entity @s[tag=focus_player] positioned ^ ^ ^5 unless entity @a[limit=1,sort=nearest,gamemode=!spectator,distance=..4] run effect clear @s slowness
tag @s remove focus_player
execute positioned ^ ^ ^6 if entity @a[limit=1,sort=nearest,gamemode=!spectator,distance=..4] run tag @s add focus_player
execute if entity @s[tag=focus_player] run effect give @s slowness 1 6 true
execute unless entity @s[tag=focus_player] positioned ^ ^ ^6 if entity @a[limit=1,sort=nearest,gamemode=!spectator,distance=..8] run tag @s add focus_player
execute if score @s counter matches 91.. run tag @s add focus_player
execute if entity @s[tag=focus_player] run scoreboard players add @s counter 1

execute if score @s counter matches 91.. run function wancomatter:boss/necro/skill1/mage/0
execute if score @s counter >= @s subcounter2 run function wancomatter:boss/necro/skill1/mage/end
