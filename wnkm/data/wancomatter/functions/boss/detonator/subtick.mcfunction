execute if entity @a[advancements={wancomatter:general/ehp_lightning=true},limit=1] as @a[advancements={wancomatter:general/ehp_lightning=true}] unless score @s hurtByTime matches ..30 run function wancomatter:boss/detonator/ehp/lightning

execute if entity @e[tag=b1stormbolt,limit=1] as @e[tag=b1stormbolt] at @s run function wancomatter:boss/detonator/skill1/tick
execute if entity @e[tag=b1sparkrush,limit=1] as @e[tag=b1sparkrush] at @s run function wancomatter:boss/detonator/skill2/tick
execute if entity @e[tag=b1sparkshot,limit=1] as @e[tag=b1sparkshot] at @s run function wancomatter:boss/detonator/skill2/shot-tick
execute if entity @e[tag=b1darkcloud,limit=1] as @e[tag=b1darkcloud] at @s run function wancomatter:boss/detonator/skill3/tick
execute if entity @e[tag=b1s4,limit=1] as @e[tag=b1s4] at @s run function wancomatter:boss/detonator/skill4/charge
execute if entity @e[tag=b1razeblow,limit=1] as @e[tag=b1razeblow] at @s run function wancomatter:boss/detonator/skill4/tick
execute if entity @e[tag=b1s5,limit=1] as @e[tag=b1s5] at @s run function wancomatter:boss/detonator/skill5/charge
execute if entity @e[tag=b1lightning,limit=1] as @e[tag=b1lightning] at @s run function wancomatter:boss/detonator/skill5/tick
execute if entity @e[tag=b1s6,limit=1] as @e[tag=b1s6] at @s run function wancomatter:boss/detonator/skill6/boss-tick
execute if entity @e[tag=b1elecflow,limit=1] as @e[tag=b1elecflow] at @s run function wancomatter:boss/detonator/skill6/tick
execute if entity @e[tag=b1s8,limit=1] as @e[tag=b1s8] at @s run function wancomatter:boss/detonator/skill8/boss-tick

execute if entity @e[tag=b1s21,limit=1] as @e[tag=b1s21] at @s run function wancomatter:boss/detonator/skill21/boss-tick
execute if entity @e[tag=b1s22,limit=1] as @e[tag=b1s22] at @s run function wancomatter:boss/detonator/skill22/boss-tick
execute if entity @e[tag=b1s22blast,limit=1] as @e[tag=b1s22blast] at @s run function wancomatter:boss/detonator/skill22/blast-tick
execute if entity @e[tag=b1s22thunder,limit=1] as @e[tag=b1s22thunder] at @s run function wancomatter:boss/detonator/skill22/thunder-tick
execute if entity @e[tag=b1s23,limit=1] as @e[tag=b1s23] at @s run function wancomatter:boss/detonator/skill23/tick

