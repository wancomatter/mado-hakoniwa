execute if entity @s[tag=floatboots_elytra] run data modify entity @s Inventory[{Slot:102b,id:"minecraft:elytra"}].tag.Damage set value 0
execute if entity @s[tag=floatboots_elytra] run tag @s remove floatboots_elytra
execute if entity @s[scores={sneak=1..},gamemode=!spectator] unless score @s floatboots_count matches 3.. unless data entity @s {OnGround:1b} unless data entity @s {ActiveEffects:[{Id:25,Amplifier:6b}]} run tag @s add this
execute if entity @s[tag=this] unless score @s Mana matches 7.. run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
execute if entity @s[tag=this] unless score @s Mana matches 7.. run title @s times 0 16 10
execute if entity @s[tag=this] unless score @s Mana matches 7.. run title @s subtitle [{"text":"MPが不足しています","color":"red"}]
execute if entity @s[tag=this] unless score @s Mana matches 7.. run title @s title ""
execute if entity @s[tag=this] unless score @s Mana matches 7.. run tag @s remove this
execute if entity @s[tag=this] if score @s Mana matches 7.. run scoreboard players remove @s Mana 7
effect give @s[tag=this] minecraft:levitation 1 6 true
execute if entity @s[tag=this] run particle cloud ~ ~ ~ 0 0 0 0.1 20 normal @a
execute if entity @s[tag=this] run particle cloud ~ ~ ~ 0 0 0 0.1 10 force @a
execute if entity @s[tag=this] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 1
execute if entity @s[tag=this] run scoreboard players add @s floatboots_count 1
execute if entity @s[tag=this] run data modify entity @s Inventory[{Slot:102b,id:"minecraft:elytra"}].tag.Damage set value 432
execute if entity @s[tag=this] run tag @s add floatboots_elytra
tag @s remove this
execute if score @s floatboots_count matches 1.. if data entity @s {OnGround:1b} run scoreboard players reset @s floatboots_count