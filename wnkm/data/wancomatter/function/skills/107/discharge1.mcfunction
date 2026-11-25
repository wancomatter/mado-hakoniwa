scoreboard players remove @s Mana 3
scoreboard players set @s CooldownX 42
scoreboard players set @s CooldownX_max 42

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.8 {Duration:1,Tags:["vector","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute positioned ~ ~1 ~ run summon minecraft:trident ^ ^0.15 ^0.1 {NoGravity:1b,SoundEvent:"minecraft:ui.toast.out",Tags:["spearPiercing","crit_arrow","projectile","discharge","wnkm.owned","wnkm.round"],Trident:{Count:1b,id:"minecraft:trident"},crit:1b,damage:2.0d,item:{count:1,id:"minecraft:trident"},life:1200s}
execute as @e[tag=discharge] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

#effect give @s minecraft:slowness 1 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~1 ~ 1.2 0.5
tag @s add this
execute as @e[tag=discharge] run data modify entity @s Owner set from entity @e[tag=this,limit=1] UUID
tag @s remove this
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy
