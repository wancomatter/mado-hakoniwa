scoreboard players set @s SelectItemSlot2 0
execute as @e[type=player,scores={maxHP=-2147483648..,HP=1..}] run function wancomatter:boss/dragon/heal_rain/3_player
execute as @e[type=!player,scores={maxHP=-2147483648..,HP=1..}] run function wancomatter:boss/dragon/heal_rain/3_entity
scoreboard players reset #dummy