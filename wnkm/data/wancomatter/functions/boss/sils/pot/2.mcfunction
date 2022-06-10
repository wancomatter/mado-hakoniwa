summon armor_stand 0.0 0.0 0.0 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @e[tag=vector] run tp @s 0.0 0.0 0.0 ~ 0
loot spawn ~ -10 ~ loot sirasagi:random/3
execute as @e[tag=vector] store result score @s counter1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.3"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.3"}]}}}]
execute as @e[tag=vector] if score @s counter1 matches 1 at @s rotated ~30 0 run tp @s ^ ^0.5 ^-0.8
execute as @e[tag=vector] if score @s counter1 matches 2 at @s rotated ~-30 0 run tp @s ^ ^0.5 ^-0.8
execute as @e[tag=vector] unless score @s counter1 matches 1..2 at @s rotated ~ 0 run tp @s ^ ^0.5 ^-0.8
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
