scoreboard players set @s Cooldown2 320
scoreboard players set @s Cooldown2_max 0
execute unless score @s Cooldown4 matches 100.. run scoreboard players set @s Cooldown4 100
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 4 1.6
particle minecraft:angry_villager ~ ~1 ~ 1 1 1 1 52 normal @a
particle minecraft:angry_villager ~ ~1 ~ 1 1 1 1 13 force @a
tag @e[tag=must_target] add bear_s2target
schedule function wancomatter:boss/bear/papa/skill2/leap 20t
function wancomatter:boss/bear/papa/skill2/re_advent
