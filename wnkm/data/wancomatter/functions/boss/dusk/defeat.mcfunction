execute if entity @a[scores={maxHP=1..},limit=1] run tag @s add killed-player
execute if entity @s[tag=killed-player] unless entity @s[scores={lastHurtByNumber=0..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @s[scores={lastHurtByNumber=0..}] as @a if score @e[tag=killed-player,limit=1,sort=nearest] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @a[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
tag @a[tag=got-kill] remove got-kill
tag @s remove killed-player

tag @s add b3s21used
tag @s add b3s22used
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:dusk

execute if entity @a[scores={maxHP=1..}]
kill @e[tag=b3vermilionLance]
kill @e[tag=b3fireGate]
kill @e[tag=b3fireArrow]
kill @e[tag=b3ignisStrike]
kill @e[tag=b3magmaBase]
kill @e[tag=b3magmaCross]
kill @e[tag=b3volcanoSeed]
kill @e[tag=b3volcano]
execute if entity @e[tag=b3s6slime,limit=1] as @e[tag=b3s6slime] run data merge entity @s {Health:0f,Size:0}
kill @e[tag=b3roundStand]
kill @e[tag=b3roundLance]
kill @e[tag=b3s0target]
kill @e[tag=b3circleArrow]
kill @e[tag=b3circleFire]
kill @e[tag=b3beast]
kill @e[tag=b3s21arrow]
kill @e[tag=b3s21turret]
kill @e[tag=b3s21shot]
kill @e[tag=b3s22charge]
kill @e[tag=b3s22block]
kill @e[tag=b3s22hitbox]
kill @e[tag=b3s22meteor]
kill @e[tag=b3s22fire]
kill @e[tag=b3s22flash]
kill @s