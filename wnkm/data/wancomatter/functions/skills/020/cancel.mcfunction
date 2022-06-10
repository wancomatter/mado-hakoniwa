execute if data entity @s {ActiveEffects:[{Id:2b}]} store result score @s dummy run data get entity @s ActiveEffects[{Id:2b}].Amplifier
execute if score @s dummy matches 0..2 run effect clear @s minecraft:slowness

tag @s add windcut_dummy
execute as @e[tag=windcut_p_stand] if score @s playerNumber = @a[tag=windcut_dummy,limit=1] playerNumber run kill @s
tag @s remove windcut_dummy
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 2
tag @s remove windcut_addable
