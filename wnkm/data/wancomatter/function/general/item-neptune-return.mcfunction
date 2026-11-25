tag @s add this
scoreboard players set @a dummy -1
summon area_effect_cloud 0.0 0.0 0.0 {Duration:1,Tags:["this2","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute as @a run function wancomatter:general/item-neptune-return-loop
kill @e[tag=this2]
execute as @a[scores={dummy=0},limit=1,sort=nearest] run function wancomatter:general/item-neptune-return-loot
scoreboard players reset @a dummy
kill @s
