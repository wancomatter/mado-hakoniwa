scoreboard players set @s dummy 50
scoreboard players operation @s dummy *= @a[tag=user,limit=1] statCTAmount
scoreboard players operation @s dummy /= #1000 counter

execute if score @s subcounter matches 0 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:0b}]} run tag @s add flag
execute if score @s subcounter matches 0 as @a[tag=user] unless data entity @s {Inventory:[{Slot:0b}]} run loot replace entity @s hotbar.0 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 0 run scoreboard players operation @a[tag=user] Cooldown1 = @s dummy
execute if score @s subcounter matches 0 run scoreboard players operation @a[tag=user] Cooldown1_max = @s dummy
execute if score @s subcounter matches 1 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:1b}]} run tag @s add flag
execute if score @s subcounter matches 1 as @a[tag=user] unless data entity @s {Inventory:[{Slot:1b}]} run loot replace entity @s hotbar.1 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 1 run scoreboard players operation @a[tag=user] Cooldown2 = @s dummy
execute if score @s subcounter matches 1 run scoreboard players operation @a[tag=user] Cooldown2_max = @s dummy
execute if score @s subcounter matches 2 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:2b}]} run tag @s add flag
execute if score @s subcounter matches 2 as @a[tag=user] unless data entity @s {Inventory:[{Slot:2b}]} run loot replace entity @s hotbar.2 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 2 run scoreboard players operation @a[tag=user] Cooldown3 = @s dummy
execute if score @s subcounter matches 2 run scoreboard players operation @a[tag=user] Cooldown3_max = @s dummy
execute if score @s subcounter matches 3 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:3b}]} run tag @s add flag
execute if score @s subcounter matches 3 as @a[tag=user] unless data entity @s {Inventory:[{Slot:3b}]} run loot replace entity @s hotbar.3 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 3 run scoreboard players operation @a[tag=user] Cooldown4 = @s dummy
execute if score @s subcounter matches 3 run scoreboard players operation @a[tag=user] Cooldown4_max = @s dummy
execute if score @s subcounter matches 4 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:4b}]} run tag @s add flag
execute if score @s subcounter matches 4 as @a[tag=user] unless data entity @s {Inventory:[{Slot:4b}]} run loot replace entity @s hotbar.4 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 4 run scoreboard players operation @a[tag=user] Cooldown5 = @s dummy
execute if score @s subcounter matches 4 run scoreboard players operation @a[tag=user] Cooldown5_max = @s dummy
execute if score @s subcounter matches 5 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:5b}]} run tag @s add flag
execute if score @s subcounter matches 5 as @a[tag=user] unless data entity @s {Inventory:[{Slot:5b}]} run loot replace entity @s hotbar.5 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 5 run scoreboard players operation @a[tag=user] Cooldown6 = @s dummy
execute if score @s subcounter matches 5 run scoreboard players operation @a[tag=user] Cooldown6_max = @s dummy
execute if score @s subcounter matches 6 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:6b}]} run tag @s add flag
execute if score @s subcounter matches 6 as @a[tag=user] unless data entity @s {Inventory:[{Slot:6b}]} run loot replace entity @s hotbar.6 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 6 run scoreboard players operation @a[tag=user] Cooldown7 = @s dummy
execute if score @s subcounter matches 6 run scoreboard players operation @a[tag=user] Cooldown7_max = @s dummy
execute if score @s subcounter matches 7 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:7b}]} run tag @s add flag
execute if score @s subcounter matches 7 as @a[tag=user] unless data entity @s {Inventory:[{Slot:7b}]} run loot replace entity @s hotbar.7 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 7 run scoreboard players operation @a[tag=user] Cooldown8 = @s dummy
execute if score @s subcounter matches 7 run scoreboard players operation @a[tag=user] Cooldown8_max = @s dummy
execute if score @s subcounter matches 8 unless data entity @a[tag=user,limit=1] {Inventory:[{Slot:8b}]} run tag @s add flag
execute if score @s subcounter matches 8 as @a[tag=user] unless data entity @s {Inventory:[{Slot:8b}]} run loot replace entity @s hotbar.8 loot wancomatter:items/meele_weapons/boomerang
execute if score @s subcounter matches 8 run scoreboard players operation @a[tag=user] Cooldown9 = @s dummy
execute if score @s subcounter matches 8 run scoreboard players operation @a[tag=user] Cooldown9_max = @s dummy

execute unless entity @s[tag=flag] run loot give @a[tag=user] loot wancomatter:items/meele_weapons/boomerang
tag @s remove flag

data modify entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:115}}].tag.Owner.L set from entity @s UUIDLeast
data modify entity @s Inventory[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:155}}].tag.Owner.M set from entity @s UUIDMost

