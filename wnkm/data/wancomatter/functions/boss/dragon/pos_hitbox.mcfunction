execute if entity @s[tag=boss_hitbox1] run tp @s ^ ^0 ^0.98 ~ 0
execute if entity @s[tag=boss_hitbox2] run tp @s ^ ^0 ^-0.98 ~ 0
execute if entity @s[tag=boss_hitbox3] at @e[tag=dragon1_stand_head,tag=dragon_match_ownerNumber,limit=1] run tp @s ^ ^1 ^0.98 ~ 0
execute if entity @s[tag=boss_hitbox4] at @e[tag=dragon1_stand_tail,tag=dragon_match_ownerNumber,limit=1] run tp @s ^ ^ ^-0.28 ~ 0
execute if entity @s[tag=boss_hitbox5] at @e[tag=dragon1_stand_tail,tag=dragon_match_ownerNumber,limit=1] run tp @s ^ ^-0.2 ^-2.24 ~ 0
