execute at @a[tag=027owner,limit=1] run summon marker ~ ~1.9 ~ {Tags:["027tmp","first"]}

data merge storage random: {min:-150,max:150}
execute as @e[tag=027tmp] store result score @s Cooldown1 run function project-c:general/random
execute as @e[tag=027tmp] at @s run function project-c:general/score_tp/local_x
data merge storage random: {min:-150,max:150}
execute as @e[tag=027tmp] store result score @s Cooldown3 run function project-c:general/random
execute as @e[tag=027tmp] at @s run function project-c:general/score_tp/local_z

execute as @e[tag=027tmp] run function wancomatter:skills/027/fairy_spirit/vector
execute run data modify entity @s Motion set from entity @e[tag=027tmp,limit=1] Pos
kill @e[tag=027tmp]
