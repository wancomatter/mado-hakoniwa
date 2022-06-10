execute if entity @s[tag=necro_s1_axe_GC] if data entity @s {OnGround:1b} run function wancomatter:boss/necro/skill1/axe/2
execute if entity @s[tag=necro_s1_axe_GC_use] run function wancomatter:boss/necro/skill1/axe/1
execute if score #difficult counter matches 3..4 unless entity @s[tag=necro_s1_axe_GC_used] if score @s HP < @s Mana run function wancomatter:boss/necro/skill1/axe/0
execute if score #difficult counter matches 3..4 if entity @s[tag=necro_s1_axe_GC_used] if score @s HP >= @s Mana run tag @s remove necro_s1_axe_GC_used

execute if data entity @s ActiveEffects[{Id:2b}] run effect clear @s slowness
execute if data entity @s ActiveEffects[{Id:18b}] run effect clear @s weakness
execute if data entity @s ActiveEffects[{Id:19b}] run effect clear @s poison
execute if data entity @s ActiveEffects[{Id:20b}] run effect clear @s wither
execute if data entity @s ActiveEffects[{Id:24b}] run effect clear @s glowing
