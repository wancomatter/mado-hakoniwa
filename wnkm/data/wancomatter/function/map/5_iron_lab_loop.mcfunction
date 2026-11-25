scoreboard players add @s dummy 1
summon minecraft:armor_stand ^ ^ ^16 {Invisible:1b,Marker:1b,NoGravity:1b,Passengers:[{Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["shulker_lift","this2"],id:"minecraft:shulker"}],Small:1b,Tags:["shulker_rotating_lift_stand","this","wnkm.owned"]}
execute if entity @s[tag=shulker_rotating_lift_o1] run tag @e[tag=this] add shulker_rotating_lift_stand1
execute if entity @s[tag=shulker_rotating_lift_o2] run tag @e[tag=this] add shulker_rotating_lift_stand2
execute if entity @s[tag=shulker_rotating_lift_o1] run tag @e[tag=this2] add shulker_rotating_lift_shulker1
execute if entity @s[tag=shulker_rotating_lift_o2] run tag @e[tag=this2] add shulker_rotating_lift_shulker2
scoreboard players operation @e[tag=this] counter = @s dummy
tag @e[tag=this] remove this
tag @e[tag=this2] remove this2
execute unless score @s dummy matches 9.. run function wancomatter:map/5_iron_lab_loop
