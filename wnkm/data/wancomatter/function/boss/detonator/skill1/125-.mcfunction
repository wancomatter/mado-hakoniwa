execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run scoreboard players set @s Cooldown1_max 34
execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run effect give @s minecraft:luck 1 9 true
execute if entity @s[tag=b1s1-sound] if score @s counter matches 125 as @e[tag=detonator] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.3d
execute if score @s counter matches 125 run summon lightning_bolt ^ ^ ^3 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 126 run summon lightning_bolt ^ ^ ^6 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 127 run summon lightning_bolt ^ ^ ^9 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 128 run summon lightning_bolt ^ ^ ^12 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 129 run summon lightning_bolt ^ ^ ^15 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 130 run summon lightning_bolt ^ ^ ^18 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 129 run summon lightning_bolt ^ ^ ^21 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 128 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^24 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 127 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^27 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 126 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^30 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 125 if score #difficult counter matches 3.. run summon lightning_bolt ^ ^ ^33 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 126 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^36 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 127 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^39 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 128 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^42 {Tags:["wnkm.owned","wnkm.round"]}
execute if score @s counter matches 129 if score #difficult counter matches 4.. run summon lightning_bolt ^ ^ ^45 {Tags:["wnkm.owned","wnkm.round"]}
