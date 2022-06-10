#AEC処理
execute as @e[type=area_effect_cloud,x=0,y=0,z=0,tag=combo_power,distance=..1] if score @s playerNumber = @a[tag=hurtBy,scores={blessNo23=1..},limit=1] playerNumber run tag @s add it
execute unless entity @e[tag=combo_power_now,limit=1] run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["combo_power","this","combo_power_now"],Duration:40}
execute if entity @e[tag=combo_power_now,limit=1] run data merge entity @e[tag=combo_power_now,limit=1] {Age:0}
execute if entity @e[tag=this,limit=1] run scoreboard players operation @e[tag=this,limit=1] playerNumber = @a[tag=hurtBy,scores={blessNo23=1..},limit=1] playerNumber
execute if entity @e[tag=this,limit=1] run tag @e[tag=this] remove this

#ダメージ計算
execute if entity @e[tag=combo_power_now,limit=1] run scoreboard players operation #bless counter = @e[tag=combo_power_now,limit=1] counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless counter *= #8 counter
execute if score #bless counter matches 1.. run scoreboard players operation #statDamageBoost dummy += #bless counter
scoreboard players reset #bless counter

execute unless score @s hurtTimeTaken matches 1.. run function wancomatter:general/bless/combo_add
tag @e[tag=combo_power_now] remove it