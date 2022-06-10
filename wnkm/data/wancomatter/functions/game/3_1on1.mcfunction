tag @s add this
execute as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown1 run scoreboard players set @e[tag=this] Cooldown3 1
execute if score @s Cooldown3 matches 1 as @a[tag=1on1_battle] if score @s playerNumber = @e[tag=this,limit=1] Cooldown2 run scoreboard players set @e[tag=this] Cooldown3 -1
tag @s remove this

execute unless score @s Cooldown3 matches -1 run function wancomatter:game/1on1/game/result
scoreboard players set @s Cooldown3 0

