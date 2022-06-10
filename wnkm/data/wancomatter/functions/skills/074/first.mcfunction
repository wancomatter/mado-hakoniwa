#コスト支払い
scoreboard players remove @s Mana 10
scoreboard players set @s CooldownX 400
scoreboard players set @s CooldownX_max 400

#演出とか
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1 0.5

#慣性とか含めたMotion測定
execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1.25 {Tags:["074vector"],Duration:1}
#召喚と設定
execute anchored eyes run summon minecraft:item ^ ^ ^ {Tags:["this","smoke_shot","item_bullet"],Fire:2s,PickupDelay:10000s,Age:5840s,Invulnerable:1b,Item:{id:"minecraft:firework_star",Count:1b}}
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=074vector,limit=1] Pos
kill @e[tag=074vector,limit=1]
execute as @e[tag=this,limit=1] if score @s teamNumber matches 1 run team join Red @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 2 run team join Aqua @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 3 run team join Yellow @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 4 run team join Green @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 5 run team join Purple @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 6 run team join White @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 7 run team join Black @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 8 run team join Blue @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 9 run team join Pink @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 10 run team join Gold @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 11 run team join Gray @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 12 run team join DarkRed @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 13 run team join DarkAqua @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 14 run team join DarkGreen @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 15 run team join DarkBlue @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 16 run team join DarkGray @s
execute as @e[tag=this,limit=1] if score @s teamNumber matches 17 run team join noPush @s


#後処理
tag @e[tag=this] remove this