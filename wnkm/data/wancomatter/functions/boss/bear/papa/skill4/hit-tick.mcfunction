scoreboard players add @s counter 1
execute if score @s counter matches 0.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 0.. as @e[tag=bear_plant_hitting] if score @s playerNumber = #dummy playerNumber run tag @s add this
execute if score @s counter matches 0.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run tag @e[tag=this] remove bear_plant_hitting
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:-5,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:0b}
execute if score @s counter matches 0.. if score @s subcounter matches 5.. store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=bear_p,limit=1] playerNumber
execute if score @s counter matches 0.. if score @s subcounter matches 5.. if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 8.0f
execute if score @s counter matches 0.. if score @s subcounter matches 5.. if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score @s counter matches 0.. if score @s subcounter matches 5.. if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute if score @s counter matches 0.. if score @s subcounter matches 5.. as @a[tag=this,limit=1,sort=nearest] run function wancomatter:general/damagetaken/storage_damage
execute if score @s counter matches 0.. run scoreboard players set @s counter -5
execute if entity @e[tag=this,limit=1] at @e[tag=this] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1.2 1
execute if entity @e[tag=this,limit=1] at @e[tag=this] run particle minecraft:block ice ~ ~ ~ 0.5 0.5 0.5 1 40 force @a
execute if entity @e[tag=this,limit=1] as @e[tag=this] run tp @s @s
tag @e[tag=this] remove this

execute if score @s subcounter matches 5.. run kill @s