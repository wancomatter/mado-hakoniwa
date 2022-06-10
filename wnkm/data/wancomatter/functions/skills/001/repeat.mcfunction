playsound minecraft:entity.blaze.shoot master @a ~ ~1.6 ~ 1 2
execute store result score #dummy Cooldown1 run data get entity @s Rotation[0] 1000
execute store result score #dummy Cooldown2 run data get entity @s Rotation[1] 1000
loot spawn 0 0 0 loot wancomatter:random/2.-50_49
execute store result score #dummy Cooldown3 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 110
execute store result score #dummy Cooldown4 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 110
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute anchored eyes run summon arrow ^ ^ ^ {Tags:["discharge"],life:1200s,PierceLevel:127b,Fire:300s,damage:3.6d,Color:-1}
data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
execute as @e[tag=discharge] store result entity @s Rotation[0] float 0.001 run scoreboard players operation #dummy Cooldown3 += #dummy Cooldown1
execute as @e[tag=discharge] store result entity @s Rotation[1] float 0.001 run scoreboard players operation #dummy Cooldown4 += #dummy Cooldown2
execute rotated as @e[tag=discharge,limit=1] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^1.6 {Tags:["discharge2"],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @e[tag=discharge] run data modify entity @s Motion set from entity @e[tag=discharge2,limit=1] Pos
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge