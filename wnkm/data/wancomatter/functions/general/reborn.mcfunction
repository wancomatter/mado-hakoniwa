execute if score #game counter matches 1.. if score @s respawnX matches -2147483648..2147483647 if score @s respawnY matches -2147483648..2147483647 if score @s respawnZ matches -2147483648..2147483647 run function wancomatter:general/respawn_tp
scoreboard players set @s maxHP 10
function wancomatter:general/inventory-changed