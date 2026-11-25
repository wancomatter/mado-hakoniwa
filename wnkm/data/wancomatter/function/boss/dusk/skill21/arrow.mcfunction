loot spawn 0.0 0.0 0.0 loot wancomatter:random/0-360
tag @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] add vector
execute store result entity @s Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
execute as @e[tag=vector] store result entity @s Rotation[0] float 0.1 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 10
execute rotated as @e[tag=vector] positioned ~ 7.5 ~ run summon minecraft:arrow ^ ^ ^ {Color:-1,Fire:32767s,NoGravity:1b,PierceLevel:127b,Tags:["this","projectile","b3s21arrow","wnkm.owned","wnkm.round"],damage:20.0d,item:{components:{"minecraft:custom_data":{CustomPotionColor:-1}},count:1,id:"minecraft:arrow"},life:1200}
#execute rotated as @e[tag=vector] positioned ~ 7.5 ~ run summon minecraft:arrow ^ ^ ^45 {Tags:["this","b3s21arrow"],NoGravity:1b,life:1200,damage:20.0d,Fire:32767s,Color:-1}
execute unless score #difficult counter matches 2..4 as @e[tag=vector] at @s run tp @s ^ ^ ^-1.0
execute if score #difficult counter matches 2 as @e[tag=vector] at @s run tp @s ^ ^ ^-1.3
execute if score #difficult counter matches 3 as @e[tag=vector] at @s run tp @s ^ ^ ^-1.6
execute if score #difficult counter matches 4 as @e[tag=vector] at @s run tp @s ^ ^ ^-1.8
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=this] subcounter2 54
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=this] subcounter2 39
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=this] subcounter2 31
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=this] subcounter2 28
scoreboard players set @e[tag=this] counter 0
tag @e[tag=this] remove this
