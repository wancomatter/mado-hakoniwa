execute unless score #difficult counter matches 2..4 at @e[tag=b3s22charge] run scoreboard players add @s Cooldown2_max 6
execute if score #difficult counter matches 2 at @e[tag=b3s22charge] run scoreboard players add @s Cooldown2_max 7
execute if score #difficult counter matches 3 at @e[tag=b3s22charge] run scoreboard players add @s Cooldown2_max 8
execute if score #difficult counter matches 4 at @e[tag=b3s22charge] run scoreboard players add @s Cooldown2_max 10
scoreboard players add @s Cooldown6 1
execute unless entity @e[tag=b3s22charge,limit=1] run function wancomatter:boss/dusk/skill22/end
execute if score @s Cooldown2_max matches 1600.. if score @s Cooldown3_max matches 15.. run function wancomatter:boss/dusk/skill22/burst
execute if score @s Cooldown2_max matches 1600.. unless score @s Cooldown3_max matches 15.. run function wancomatter:boss/dusk/skill22/charge
