effect give @s minecraft:slowness 2 9 true
scoreboard players set @s Cooldown5 240
tag @s add b3s5using
tag @s add usedskill
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 4 1
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.3 200 normal @a
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.3 100 force @a
execute if score #difficult counter matches 3 if entity @s[tag=b3s22used] run loot spawn 0 0 0 loot wancomatter:random/half
execute if score #difficult counter matches 4 run loot spawn 0 0 0 loot wancomatter:random/half
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add this
execute store result score @s Cooldown4_max run data get entity @e[tag=this,limit=1] Item.tag.randomID
kill @e[tag=this]

data modify entity @s Motion[1] set value 1.5d
