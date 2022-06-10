scoreboard players add @s subcounter 1
summon armor_stand ^ ^ ^1 {Tags:["b3s0dummy"],Marker:1b,NoGravity:1b,Invisible:1b}
execute if score @s subcounter matches 12.. run tp @s ~ ~ ~ ~ ~
execute unless score @s subcounter matches 18.. rotated ~20.2 0 run function wancomatter:boss/dusk/skill0/circle
