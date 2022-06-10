execute rotated as @e[tag=b1razeblow,limit=1,sort=nearest] positioned 0 0 0 run summon marker ^ ^ ^2 {Tags:["discharge2"]}
execute rotated as @e[tag=b1razeblow,limit=1,sort=nearest] positioned as @s anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {life:1200s,damage:4.0d,Color:-1,Motion:[0.0d,0.0d,0.0d],Tags:["discharge","b1razeblow_arrow"]}
data modify entity @e[tag=discharge,limit=1] Motion[0] set from entity @e[tag=discharge2,limit=1] Pos[0]
data modify entity @e[tag=discharge,limit=1] Motion[2] set from entity @e[tag=discharge2,limit=1] Pos[2]
kill @e[tag=discharge2]
execute if score #difficult counter matches 2 run data modify entity @e[tag=discharge,limit=1] damage set value 6.0d
execute if score #difficult counter matches 3 run data modify entity @e[tag=discharge,limit=1] damage set value 8.0d
execute if score #difficult counter matches 4 run data modify entity @e[tag=discharge,limit=1] damage set value 12.0d
tag @e[tag=discharge] remove discharge
kill @e[tag=b1razeblow,distance=..1]