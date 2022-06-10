scoreboard players remove @s subcounter 3

loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add this
execute store result score @s Cooldown3 run data get entity @e[tag=this,limit=1] Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 300
execute store result score @s Cooldown4 run data get entity @e[tag=this,limit=1] Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 300
kill @e[tag=this]
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s Cooldown3 += @s Cooldown1
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s Cooldown4 += @s Cooldown2



summon minecraft:armor_stand ~ ~100 ~ {Tags:["meteorStand_fall"],Motion:[0d,-10d,0d],OnGround:0b,Silent:1b,Invisible:1b,Small:1b,Invulnerable:1b,FallDistance:-1000f}
summon minecraft:armor_stand ~ ~100 ~ {Tags:["meteor_bullet","first"],Motion:[0d,-1d,0d],OnGround:0b,Silent:1b,Invisible:1b,Small:1b,Invulnerable:1b,FallDistance:-1000f,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:209,Enchantments:[{}]}}]}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
