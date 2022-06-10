execute if entity @a[scores={maxHP=1..},limit=1] run tag @s add killed-player
execute if entity @s[tag=killed-player] unless entity @s[scores={lastHurtByNumber=0..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @s[scores={lastHurtByNumber=0..}] as @a if score @e[tag=killed-player,limit=1,sort=nearest] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @a[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
tag @a[tag=got-kill] remove got-kill
tag @s remove killed-player

execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:bear_c

#クマバレット
execute if entity @e[tag=bear_shulker_bullet,limit=1] run kill @e[tag=bear_shulker_bullet]
#クマレーザー
execute if entity @e[tag=bear_s5AEC,limit=1] run kill @e[tag=bear_s5AEC]
#くまくまファンネル
execute if entity @e[tag=bear_s6fannel,limit=1] run kill @e[tag=bear_s6fannel]
#くまくまクラッシュ
execute if entity @e[tag=bear_s7,limit=1] run kill @e[tag=bear_s7]
#雪崩
execute if entity @e[tag=bear_s8AEC,limit=1] run kill @e[tag=bear_s8AEC]
execute if entity @e[tag=bear_s8AEC2,limit=1] run kill @e[tag=bear_s8AEC2]

#スライム
execute if entity @e[tag=bear_fannel_slime,limit=1] as @e[tag=bear_fannel_slime] run data merge entity @s {Health:0f,Size:0}
kill @s

