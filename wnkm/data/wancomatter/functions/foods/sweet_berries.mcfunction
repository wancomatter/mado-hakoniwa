execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 10
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 20
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 20 0
execute if entity @s[tag=diet] if score @s Cooldown1 matches 0..140 run scoreboard players set @s Cooldown1 0
execute if entity @s[tag=diet] if score @s Cooldown2 matches 0..140 run scoreboard players set @s Cooldown2 0
execute if entity @s[tag=diet] if score @s Cooldown3 matches 0..140 run scoreboard players set @s Cooldown3 0
execute if entity @s[tag=diet] if score @s Cooldown4 matches 0..140 run scoreboard players set @s Cooldown4 0
execute if entity @s[tag=diet] if score @s Cooldown5 matches 0..140 run scoreboard players set @s Cooldown5 0
execute if entity @s[tag=diet] if score @s Cooldown6 matches 0..140 run scoreboard players set @s Cooldown6 0
execute if entity @s[tag=diet] if score @s Cooldown7 matches 0..140 run scoreboard players set @s Cooldown7 0
execute if entity @s[tag=diet] if score @s Cooldown8 matches 0..140 run scoreboard players set @s Cooldown8 0
execute if entity @s[tag=diet] if score @s Cooldown9 matches 0..140 run scoreboard players set @s Cooldown9 0
execute if entity @s[tag=diet] if score @s Cooldown1 matches 140.. run scoreboard players remove @s Cooldown1 140
execute if entity @s[tag=diet] if score @s Cooldown2 matches 140.. run scoreboard players remove @s Cooldown2 140
execute if entity @s[tag=diet] if score @s Cooldown3 matches 140.. run scoreboard players remove @s Cooldown3 140
execute if entity @s[tag=diet] if score @s Cooldown4 matches 140.. run scoreboard players remove @s Cooldown4 140
execute if entity @s[tag=diet] if score @s Cooldown5 matches 140.. run scoreboard players remove @s Cooldown5 140
execute if entity @s[tag=diet] if score @s Cooldown6 matches 140.. run scoreboard players remove @s Cooldown6 140
execute if entity @s[tag=diet] if score @s Cooldown7 matches 140.. run scoreboard players remove @s Cooldown7 140
execute if entity @s[tag=diet] if score @s Cooldown8 matches 140.. run scoreboard players remove @s Cooldown8 140
execute if entity @s[tag=diet] if score @s Cooldown9 matches 140.. run scoreboard players remove @s Cooldown9 140
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/sweet_berries
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:sweet_berries{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/sweet_berries
