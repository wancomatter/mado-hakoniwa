scoreboard players add @s counter 1
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players add @s Mana 48
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add this
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=this,distance=..1.6] run tag @s add hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=this,distance=..1.6] run tag @s add hit
tag @s remove this
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/115/hit-entity
tp @s ^ ^ ^1
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.6 1
particle minecraft:composter ~ ~ ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:composter ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches ..100 unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 998
execute if score @s counter matches ..100 unless block ^ ^ ^0.334 #wancomatter:air run scoreboard players set @s counter 998
execute if score @s counter matches ..100 unless block ^ ^ ^0.667 #wancomatter:air run scoreboard players set @s counter 998
execute if score @s counter matches ..100 positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 998
execute if score @s counter matches ..100 positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^0.5 if entity @e[tag=wall_entity,limit=1,dx=0] run scoreboard players set @s counter 998
execute if score @s counter matches 23..100 run scoreboard players set @s counter 998
execute if score @s counter matches 998.. as @a[tag=p.boomerang] if score @s playerNumber = #dummy playerNumber run tag @s add user
execute if score @s counter matches 998 run function wancomatter:skills/115/look
execute if score @s counter matches 999.. at @s facing entity @a[tag=user,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute if score @s counter matches 999.. unless entity @a[tag=p.boomerang,distance=..16,limit=1] unless score @s subcounter2 matches 1.. run function wancomatter:skills/115/look
execute if score @s counter matches 999.. run scoreboard players remove @s subcounter2 1
execute if score @s counter matches 1000.. if entity @a[tag=user,limit=1,distance=..2.2] run scoreboard players set @s counter 2200
execute if score @s counter matches 2200.. run function wancomatter:skills/115/return
execute if score @s counter matches 2200.. run tag @s add this
execute if score @s counter matches 2200.. as @e[tag=boomerang,tag=!this] if score @s playerNumber = @e[tag=this,limit=1] playerNumber run tag @e[tag=this] remove this
execute if entity @s[tag=this] run tag @a[tag=user] remove p.boomerang
execute if entity @s[tag=this] run tag @s remove this
execute if entity @a[tag=user,limit=1] run tag @a[tag=user] remove user
scoreboard players reset #dummy
execute if score @s counter matches 2200.. run kill @s