summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Small:1b,Tags:["stone-blast","stone-blast-check-projectile-wall","first","wnkm.owned","wnkm.round"]}
execute as @e[tag=first] run loot replace entity @s armor.head loot wancomatter:skills/stoneblast
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
loot spawn 0 0 0 loot wancomatter:random/250
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.250"}].amount 3.7
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
execute as @e[tag=first] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #dummy dummy += #dummy subcounter
execute as @e[tag=first] store result entity @s Rotation[1] float 0.01 run scoreboard players get #dummy subcounter2

execute rotated as @e[tag=first,limit=1] positioned 0.0 0.1 0.0 run summon armor_stand ^ ^ ^1.1 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["vector","wnkm.owned","wnkm.round"]}
execute as @e[tag=first] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

tag @e[tag=first] remove first
scoreboard players add #dummy counter 1
scoreboard players add #dummy subcounter2 400
execute unless score #dummy counter matches 5.. run function wancomatter:skills/004/discharge2-random
