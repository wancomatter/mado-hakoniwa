scoreboard players remove @s Mana 3
scoreboard players set @s CooldownX 42
scoreboard players set @s CooldownX_max 42

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.8 {Tags:["vector"],Duration:1}
execute positioned ~ ~1 ~ run summon minecraft:trident ^ ^0.15 ^0.1 {Tags:["spearPiercing","crit_arrow","projectile","discharge"],life:1200s,damage:2.0d,NoGravity:1b,crit:1b,SoundEvent:"minecraft:ui.toast.out",Trident:{id:"minecraft:trident",Count:1b}}
execute as @e[tag=discharge] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

#effect give @s minecraft:slowness 1 0
playsound minecraft:entity.player.attack.sweep master @a ~ ~1 ~ 1.2 0.5
tag @s add this
execute as @e[tag=discharge] run data modify entity @s Owner set from entity @e[tag=this,limit=1] UUID
tag @s remove this
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy