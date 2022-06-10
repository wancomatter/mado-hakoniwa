#dummy subcounter2 -> リコイルの程度(想定:1～100)
#- counter -> ランダムリコイルの程度(想定:1～20)
execute if score #- counter matches 1.. run loot spawn 0 -10 0 loot wancomatter:random/250
execute if score #- counter matches 1.. store result score #- dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 1
execute if score #- counter matches 1.. run kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}}]
execute if score #- counter matches 1.. run scoreboard players operation #- dummy *= #- counter
execute unless score #- counter matches 1.. run scoreboard players set #- dummy 1000
scoreboard players operation #dummy subcounter2 *= #- dummy
execute if score @s sneak matches 1.. run scoreboard players operation #dummy subcounter2 /= #2 counter
scoreboard players operation @s recoilXZ = #dummy subcounter2
execute store result score #- counter run data get entity @s Rotation[0] 10000
execute store result entity @e[tag=this,limit=1] Rotation[0] float 0.0001 run scoreboard players operation #- counter -= #dummy subcounter2
scoreboard players reset #-