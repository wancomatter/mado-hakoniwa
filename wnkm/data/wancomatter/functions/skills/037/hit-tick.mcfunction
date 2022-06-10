scoreboard players add @s counter 1
execute if score @s counter matches 0.. run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 0.. as @e[tag=drainplant-hitting] if score @s playerNumber = #dummy playerNumber run tag @s add this
execute if score @s counter matches 0.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run tag @e[tag=this] remove drainplant-hitting
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run data merge storage wnkm:storage_damage {Damage:4.0f,WeaponNumber:37,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:0b}
execute if score @s counter matches 0.. if score @s subcounter matches 5.. store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s subcounter2
execute if score @s counter matches 0.. if score @s subcounter matches 5.. run effect give @e[tag=this] minecraft:hero_of_the_village 1 181 true
execute if score @s counter matches 0.. if score @s subcounter matches 5.. as @e[tag=this] run function wancomatter:general/damagetaken/storage_damage

execute if score @s counter matches 0.. run scoreboard players set @s counter -5
execute if entity @e[tag=this,limit=1] at @e[tag=this] run playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 1.2 2
execute if entity @e[tag=this,limit=1] at @e[tag=this] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 40 force @a
execute if entity @e[tag=this,limit=1] as @e[tag=this] run tp @s @s
tag @e[tag=this] remove this

execute if score @s subcounter matches 5.. run kill @s