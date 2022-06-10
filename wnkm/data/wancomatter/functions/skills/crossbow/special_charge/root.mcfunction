execute unless entity @s[gamemode=!spectator,predicate=wancomatter:crossbow/special,advancements={wancomatter:using_item/crossbow_special_charge=true}] run scoreboard players reset @s crossbow_sneak
#summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dust 0 0 0 0",Radius:0.01f,Age:4,Duration:5,WaitTime:1,Effects:[{Id:2b,Amplifier:9b,Duration:2,ShowParticles:0b,ShowIcon:0b,Ambient:1b}]}
execute if score @s crossbow_sneak matches 1 run title @s times 0 20 0
execute if score @s crossbow_sneak matches 1 run title @s subtitle {"text":"reloading","color":"gold"}
execute if score @s crossbow_sneak matches 1 run title @s title ""
execute unless score @s crossbow_sneak matches 1.. run title @s times 0 6 4
execute unless score @s crossbow_sneak matches 1.. run title @s subtitle [{"text":"canceled","color":"red"}]
execute if score @s crossbow_sneak matches 1 run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1.2 0.5
execute if score @s crossbow_sneak matches 20 run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 0.7
execute if score @s crossbow_sneak matches 40 run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 0.7
execute if score @s crossbow_sneak matches 10 run title @s subtitle {"text":"reloading.","color":"gold"}
execute if score @s crossbow_sneak matches 10 run title @s title ""
execute if score @s crossbow_sneak matches 20 run title @s subtitle {"text":"reloading..","color":"gold"}
execute if score @s crossbow_sneak matches 20 run title @s title ""
execute if score @s crossbow_sneak matches 30 run title @s subtitle {"text":"reloading...","color":"gold"}
execute if score @s crossbow_sneak matches 30 run title @s title ""
execute if score @s crossbow_sneak matches 40 run title @s subtitle {"text":"reloading....","color":"gold"}
execute if score @s crossbow_sneak matches 40 run title @s title ""
execute if score @s crossbow_sneak matches 50 run title @s subtitle {"text":"reloading.....","color":"gold"}
execute if score @s crossbow_sneak matches 50 run title @s title ""
execute if score @s crossbow_sneak matches 60 run title @s subtitle {"text":"reloading......","color":"gold"}
execute if score @s crossbow_sneak matches 60 run title @s title ""
execute if score @s crossbow_sneak matches 60 if data entity @s SelectedItem.tag{CustomModelData:132} run function wancomatter:skills/crossbow/02/charge_check
execute if score @s crossbow_sneak matches 70 if data entity @s SelectedItem.tag{CustomModelData:135} run function wancomatter:skills/crossbow/05/charge_check
