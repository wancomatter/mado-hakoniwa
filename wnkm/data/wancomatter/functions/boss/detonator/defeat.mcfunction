execute if entity @a[scores={maxHP=1..},limit=1] run tag @s add killed-player
execute if entity @s[tag=killed-player] unless entity @s[scores={lastHurtByNumber=0..}] as @a[advancements={wancomatter:general/dealt=true},sort=nearest,limit=1] run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @s[scores={lastHurtByNumber=0..}] as @a if score @e[tag=killed-player,limit=1,sort=nearest] lastHurtByNumber = @s playerNumber run tag @s add got-kill
execute if entity @s[tag=killed-player] if entity @a[tag=got-kill,limit=1] if entity @s[scores={hurtWeaponNumber=1..}] run function wancomatter:general/kill-log/by_weapon
tag @a[tag=got-kill] remove got-kill
tag @s remove killed-player

tag @s add b1s21used
tag @s add b1s22used
execute unless entity @e[tag=boss,scores={HP=1..}] run scoreboard players reset @e[scores={boss_hate=1..}] boss_hate
bossbar remove minecraft:detonator

execute if entity @a[scores={maxHP=1..}]
tag @e[tag=b1s6target] remove b1s6target
kill @e[tag=b1stormbolt]
kill @e[tag=b1sparkrush]
kill @e[tag=b1sparkshot]
kill @e[tag=b1darkcloud]
kill @e[tag=b1razeblow]
kill @e[tag=b1lightning]
kill @e[tag=b1elecflow]
kill @e[tag=b1firearrow]
kill @e[tag=b1s9creeper]
kill @e[tag=b1s22stand]
kill @e[tag=b1s22blast]
kill @e[tag=b1s22thunder]
kill @s