scoreboard players set #dummy counter 111
scoreboard players operation #dummy counter *= @s CooldownX
scoreboard players operation #dummy counter /= @s CooldownX_max
scoreboard players operation #dummy maxHP = @s CooldownX
scoreboard players remove #dummy maxHP 1
xp set @s 30 levels
xp set @s 0 points
execute if score #dummy maxHP matches 1.. if score #dummy counter matches 1.. run function wancomatter:general/cooldown-gauge
xp set @s 0 levels
scoreboard players add #dummy maxHP 19
scoreboard players operation #dummy maxHP /= #20 counter
execute if score #dummy maxHP matches 1.. run function wancomatter:general/cooldown-level
scoreboard players reset #dummy
