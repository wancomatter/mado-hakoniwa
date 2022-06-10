execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 0 run tag @s add sils_dmgblocked
execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 1 unless entity @a[advancements={sils:siraasgi/sword=true},limit=1] run tag @s add sils_dmgblocked
execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 2 unless entity @a[advancements={sils:siraasgi/arrow=true},limit=1] run tag @s add sils_dmgblocked
execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 3 unless entity @a[advancements={sils:siraasgi/trident_1=true},limit=1] unless entity @a[advancements={sils:siraasgi/trident_2=true},limit=1] run tag @s add sils_dmgblocked
execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 4 unless entity @a[advancements={sils:siraasgi/axe=true},limit=1] run tag @s add sils_dmgblocked
execute if score @e[tag=sils,limit=1,sort=nearest] dummy matches 5 unless entity @a[advancements={sils:siraasgi/pot=true},limit=1] run tag @s add sils_dmgblocked
execute unless entity @s[tag=sils_dmgblocked] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.6
execute unless entity @s[tag=sils_dmgblocked] run particle minecraft:block minecraft:glass ~ ~1 ~ 1 1 1 1 200 force @a
execute if entity @s[tag=sils_dmgblocked] run data modify entity @s Health set value 1000f
execute if entity @s[tag=sils_dmgblocked] run particle minecraft:block minecraft:white_stained_glass ~ ~1 ~ 1 1 1 1 100 force @a
execute if entity @s[tag=sils_dmgblocked] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2
execute if entity @s[tag=sils_dmgblocked] run tag @s remove sils_dmgblocked

execute store result score @s dummy run data get entity @s Health 10
scoreboard players remove @s dummy 10000
scoreboard players operation @s dummy *= #-1 counter
execute if score @s dummy matches 1.. run scoreboard players operation @e[tag=sils] HP -= @s dummy
scoreboard players operation @s dummy = @e[tag=sils,limit=1,sort=nearest] HP 
scoreboard players operation @s dummy /= #10 counter
bossbar set minecraft:sils name [{"text":"鏡写しの白鷺  -HP:"},{"score":{"name":"@s","objective":"dummy"}}]
data modify entity @s Health set value 1000f
execute store result bossbar minecraft:sils value run scoreboard players get @e[tag=sils,limit=1,sort=nearest] HP
