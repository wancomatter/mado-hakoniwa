execute if entity @a[scores={maxHP=1..},limit=1] run tag @s add killed-player
execute if entity @s[tag=killed-player] unless entity @s[scores={lastHurtByNumber=0..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @s[scores={lastHurtByNumber=0..}] as @a if score @e[tag=killed-player,limit=1,sort=nearest] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @a[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
tag @a[tag=got-kill] remove got-kill
tag @s remove killed-player

execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:bear_p

kill @e[tag=bear_p.s1arrow]
kill @e[tag=bear_s3ball]
kill @e[tag=bear_s3stand]
kill @e[tag=bear_s3ball]
kill @e[tag=bear_snowrain]
kill @e[tag=bear_plant]
kill @e[tag=bear_plant_hit_stand]
kill @s

