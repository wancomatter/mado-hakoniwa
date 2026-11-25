playsound minecraft:entity.blaze.shoot master @a ~ ~1.6 ~ 1 2
execute store result score #dummy Cooldown1 run data get entity @s Rotation[0] 1000
execute store result score #dummy Cooldown2 run data get entity @s Rotation[1] 1000
loot spawn 0 0 0 loot wancomatter:random/2.-50_49
execute store result score #dummy Cooldown3 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 110
execute store result score #dummy Cooldown4 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 110
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
execute anchored eyes run summon arrow ^ ^ ^ {Color:-1,Fire:300s,PierceLevel:127b,Tags:["discharge","wnkm.owned","wnkm.round"],damage:3.6d,item:{components:{"minecraft:custom_data":{CustomPotionColor:-1}},count:1,id:"minecraft:arrow"},life:1200s}
data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
execute as @e[tag=discharge] store result entity @s Rotation[0] float 0.001 run scoreboard players operation #dummy Cooldown3 += #dummy Cooldown1
execute as @e[tag=discharge] store result entity @s Rotation[1] float 0.001 run scoreboard players operation #dummy Cooldown4 += #dummy Cooldown2
execute rotated as @e[tag=discharge,limit=1] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.6 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge2","wnkm.owned","wnkm.round"]}
execute as @e[tag=discharge] run data modify entity @s Motion set from entity @e[tag=discharge2,limit=1] Pos
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge
