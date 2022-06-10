scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=firecircle_p] if score @s playerNumber = #dummy playerNumber run tag @s add usedBy
execute as @a[tag=firecircle_p] at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["firecircle_elem","this"],Marker:1b,Invisible:1b,NoGravity:1b}
tp @s ~ ~1.4 ~
execute at @e[tag=this] facing entity @s feet run tp @e[tag=this,limit=1,sort=nearest] ~ ~ ~ ~ ~
tp @s ~ ~ ~
scoreboard players operation @e[tag=this] teamNumber = @a[tag=usedBy,limit=1] teamNumber
scoreboard players operation @e[tag=this] playerNumber = #dummy playerNumber
tag @e[tag=this] remove this
tag @a[tag=usedBy] remove firecircle_p
tag @a[tag=usedBy] remove usedBy
