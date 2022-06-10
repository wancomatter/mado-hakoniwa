#execute store result score #dummy Cooldown1 run data get entity @s Motion[0] 50
#execute store result score #dummy Cooldown2 run data get entity @s Motion[1] 50
#execute store result score #dummy Cooldown3 run data get entity @s Motion[2] 50
summon area_effect_cloud 0.0 0.0 0.0 {Duration:2,Tags:["vector","target_distance"]}
execute store result entity @e[tag=vector,limit=1] Pos[0] double 0.00025 run scoreboard players get @s Cooldown1
execute store result entity @e[tag=vector,limit=1] Pos[1] double 0.00025 run scoreboard players get @s Cooldown2
execute store result entity @e[tag=vector,limit=1] Pos[2] double 0.00025 run scoreboard players get @s Cooldown3
execute positioned 0.0 0.0 0.0 run function wancomatter:operation/distance
execute if score @s subcounter matches ..5 run scoreboard players operation #dummy dummy = @s subcounter
execute if score @s subcounter matches 6.. run scoreboard players set #dummy dummy 6
scoreboard players add #dummy dummy 4
scoreboard players operation #dummy dummy *= #4 counter
scoreboard players operation #dummy Cooldown1 += #dummy dummy
scoreboard players operation #dummy Cooldown1 += @s dummy
scoreboard players operation #dummy Cooldown1 *= #6 counter
scoreboard players operation #dummy Cooldown1 /= #5 counter
#scoreboard players operation #dummy Cooldown1 /= #10 counter
execute if score #dummy Cooldown1 matches 401.. run scoreboard players set #dummy Cooldown1 400
execute if score #dummy Cooldown1 matches ..0 run scoreboard players set #dummy Cooldown1 1

data merge storage wnkm:storage_damage {Damage:0.1f,WeaponNumber:43,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get #dummy Cooldown1
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage

particle block anvil ~ ~ ~ 1 1 1 1 100 normal @a
particle block anvil ~ ~ ~ 1 1 1 1 25 force @a
particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 2.5 0.5
tag @e[tag=hit] remove hit
scoreboard players set @s counter 50

