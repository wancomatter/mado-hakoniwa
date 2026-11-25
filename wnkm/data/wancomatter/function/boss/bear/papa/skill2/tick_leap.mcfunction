execute if score @s Cooldown1 matches 50 run function wancomatter:boss/bear/papa/skill2/jump
scoreboard players add @s Cooldown1 1
execute if score @s Cooldown1 matches 3..49 if entity @a[tag=bear_s2target,limit=1,distance=..4.5] run function wancomatter:boss/bear/papa/skill2/jump_ready
execute if score @s Cooldown1 matches 8..49 if data entity @s {OnGround:1b} run scoreboard players set @s Cooldown1 51
execute if score @s Cooldown1 matches 40..49 run scoreboard players set @s Cooldown1 51
execute if score @s Cooldown1 matches 51.. run tag @a[tag=bear_s2target] remove bear_s2target
execute if score @s Cooldown1 matches 51.. run tag @s remove bear_s2
