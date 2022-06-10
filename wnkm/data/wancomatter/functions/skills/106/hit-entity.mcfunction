data merge entity @s {Marker:1b}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vector"],Duration:1}
data modify entity @e[tag=vector,limit=1] Pos[0] set from entity @s Motion[0]
data modify entity @e[tag=vector,limit=1] Pos[2] set from entity @s Motion[2]
execute positioned 0.0 0.0 0.0 facing entity @e[tag=vector,limit=1] feet rotated ~ 0 positioned as @e[tag=dagger-hit,limit=1,sort=nearest] positioned ^ ^ ^-1.5 run summon trident ~ ~1 ~ {life:1200s,damage:2.0d,Motion:[0.0d,0.0d,0.0d],Tags:["this","trident_blood_dagger"],SoundEvent:"minecraft:ui.toast.out"}
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add blood_dagger_owner
data modify entity @e[tag=this,limit=1] Owner set from entity @a[tag=blood_dagger_owner,limit=1] UUID
tag @a[tag=blood_dagger_owner] remove blood_dagger_owner
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
playsound minecraft:item.trident.hit_ground master @a ~ ~ ~ 1 0.5
playsound minecraft:item.trident.hit master @a ~ ~ ~ 1 0.5
particle minecraft:sweep_attack ~ ~ ~ 0.3 0.3 0.3 1 4 normal @a
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
kill @e[tag=110vector]
tag @e[tag=dagger-hit] remove dagger-hit
tag @e[tag=this] remove this
function wancomatter:skills/106/set-dagger
