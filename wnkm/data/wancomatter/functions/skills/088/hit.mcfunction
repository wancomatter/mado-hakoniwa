particle flash ~ ~ ~ 0 0 0 1 1 force @a
particle flash ~ ~ ~ 0.5 0.5 0.5 1 4 normal @a
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1.2 2
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1.2 2
particle minecraft:dust 1 0.2 1 1.5 ~ ~ ~ 0.6 2.0 0.6 1 80 normal @a
particle minecraft:dust 1 0.2 1 1.5 ~ ~ ~ 0.6 2.0 0.6 1 20 force @a

execute as @a if score @s playerNumber = @e[tag=now,limit=1] playerNumber run tag @s add user
execute as @a[tag=user] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.6 0.5

execute if score @s SelectItemSlot2 matches 1 as @a[tag=user] if score @s Cooldown1 matches 0..60 run scoreboard players set @s Cooldown1 0
execute if score @s SelectItemSlot2 matches 1 as @a[tag=user] if score @s Cooldown1 matches 60.. run scoreboard players remove @s Cooldown1 60

execute if score @s SelectItemSlot2 matches 2 as @a[tag=user] if score @s Cooldown2 matches 0..60 run scoreboard players set @s Cooldown2 0
execute if score @s SelectItemSlot2 matches 2 as @a[tag=user] if score @s Cooldown2 matches 60.. run scoreboard players remove @s Cooldown2 60

execute if score @s SelectItemSlot2 matches 3 as @a[tag=user] if score @s Cooldown3 matches 0..60 run scoreboard players set @s Cooldown3 0
execute if score @s SelectItemSlot2 matches 3 as @a[tag=user] if score @s Cooldown3 matches 60.. run scoreboard players remove @s Cooldown3 60

execute if score @s SelectItemSlot2 matches 4 as @a[tag=user] if score @s Cooldown4 matches 0..60 run scoreboard players set @s Cooldown4 0
execute if score @s SelectItemSlot2 matches 4 as @a[tag=user] if score @s Cooldown4 matches 60.. run scoreboard players remove @s Cooldown4 60

execute if score @s SelectItemSlot2 matches 5 as @a[tag=user] if score @s Cooldown5 matches 0..60 run scoreboard players set @s Cooldown5 0
execute if score @s SelectItemSlot2 matches 5 as @a[tag=user] if score @s Cooldown5 matches 60.. run scoreboard players remove @s Cooldown5 60

execute if score @s SelectItemSlot2 matches 6 as @a[tag=user] if score @s Cooldown6 matches 0..60 run scoreboard players set @s Cooldown6 0
execute if score @s SelectItemSlot2 matches 6 as @a[tag=user] if score @s Cooldown6 matches 60.. run scoreboard players remove @s Cooldown6 60

execute if score @s SelectItemSlot2 matches 7 as @a[tag=user] if score @s Cooldown7 matches 0..60 run scoreboard players set @s Cooldown7 0
execute if score @s SelectItemSlot2 matches 7 as @a[tag=user] if score @s Cooldown7 matches 60.. run scoreboard players remove @s Cooldown7 60

execute if score @s SelectItemSlot2 matches 8 as @a[tag=user] if score @s Cooldown8 matches 0..60 run scoreboard players set @s Cooldown8 0
execute if score @s SelectItemSlot2 matches 8 as @a[tag=user] if score @s Cooldown8 matches 60.. run scoreboard players remove @s Cooldown8 60

tag @a[tag=user] remove user

data merge storage wnkm:storage_damage {Damage:4.8f,WeaponNumber:88,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

scoreboard players set @s counter 200