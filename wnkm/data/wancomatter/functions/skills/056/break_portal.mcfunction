scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[tag=portal_pearl_stand_x] if score @s playerNumber = #dummy playerNumber run tag @s add kill
execute at @e[tag=kill] run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 1 8 normal @a
execute at @e[tag=kill] run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 1 1 force @a
execute at @e[tag=kill] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
execute at @e[tag=kill] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
execute at @e[tag=kill] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.6
#使用者への通知
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add user
tellraw @a[tag=user] {"text":"ポータルが破壊されました","color":"red"}
execute as @a[tag=user] at @s run playsound minecraft:entity.ghast.scream master @s ~ ~ ~ 1 1
tag @a[tag=user] remove user
#キル処理
execute as @e[tag=portal_hitbox] if score @s playerNumber = #dummy playerNumber run kill @s
kill @e[tag=kill]
