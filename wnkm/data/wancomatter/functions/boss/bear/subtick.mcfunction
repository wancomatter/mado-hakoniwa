#第二形態への移行
execute if entity @e[tag=bear_sleep,limit=1] unless entity @e[tag=bear_p,limit=1] as @e[tag=bear_sleep] at @s run function wancomatter:boss/bear/child/awake/tick

#グランドクラッシュ
execute if entity @e[tag=bear_s2,limit=1] as @e[tag=bear_s2] at @s run function wancomatter:boss/bear/papa/skill2/tick_leap
execute if entity @e[tag=bear_s2_jump,limit=1] as @e[tag=bear_s2_jump] if data entity @s {OnGround:1b} at @s run function wancomatter:boss/bear/papa/skill2/crash
#スノーレイン
execute if entity @e[tag=bear_s3ball,limit=1] as @e[tag=bear_s3ball] at @s run function wancomatter:boss/bear/papa/skill3/tick-ball
execute if entity @e[tag=bear_s3stand,limit=1] as @e[tag=bear_s3stand] at @s unless entity @e[tag=bear_s3ball,limit=1,distance=..0.3] positioned ~ ~-2.0 ~ run function wancomatter:boss/bear/papa/skill3/launch
execute if entity @e[tag=bear_snowrain,limit=1] as @e[tag=bear_snowrain] at @s unless entity @e[tag=bear_s3ball,limit=1,distance=..0.3] positioned ~ ~-1.0 ~ run function wancomatter:boss/bear/papa/skill3/explode
#アイシクルプラント
execute if entity @e[tag=bear_plant,limit=1] as @e[tag=bear_plant] at @s run function wancomatter:boss/bear/papa/skill4/tick
execute if entity @e[tag=bear_plant_hit_stand,limit=1] as @e[tag=bear_plant_hit_stand] run function wancomatter:boss/bear/papa/skill4/hit-tick
#クマバレット
execute if entity @e[tag=bear_shulker_bullet,limit=1] as @e[tag=bear_shulker_bullet] at @s run function wancomatter:boss/bear/child/skill1/tick
#クマレーザー
execute if entity @e[tag=bear_s5AEC,limit=1] as @e[tag=bear_s5AEC] at @s run function wancomatter:boss/bear/child/skill5/tick
#くまくまファンネル
execute if entity @e[tag=bear_s6fannel,limit=1] as @e[tag=bear_s6fannel] at @s run function wancomatter:boss/bear/child/skill6/tick
#クマエクスプロージョン
execute if entity @e[tag=bear_s7,limit=1] as @e[tag=bear_s7] at @s run function wancomatter:boss/bear/child/skill7/tick_leap
#雪崩
execute if entity @e[tag=bear_s8AEC,limit=1] as @e[tag=bear_s8AEC] at @s run function wancomatter:boss/bear/child/skill8/tick
execute if entity @e[tag=bear_s8AEC2,limit=1] as @e[tag=bear_s8AEC2] at @s run function wancomatter:boss/bear/child/skill8/tick2
execute if entity @e[type=item,nbt={Item:{id:"minecraft:white_concrete_powder"}},limit=1] run kill @e[type=item,nbt={Item:{id:"minecraft:white_concrete_powder"}}]

#スライム
execute if entity @e[tag=bear_fannel_slime,limit=1] as @e[tag=bear_fannel_slime] at @s run function wancomatter:boss/bear/tick_slime