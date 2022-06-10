function wancomatter:boss/dragon/skill8/rain_root
execute if score #difficult counter matches 2..4 run function wancomatter:boss/dragon/skill8/rain_root
execute if score #difficult counter matches 4 run function wancomatter:boss/dragon/skill8/rain_root

particle cloud ~ ~ ~ 6.000 0.5 6.000 0 150 normal @a
particle cloud ~ ~ ~ 6.000 0.5 6.000 0 50 force @a
particle cloud ^ ^ ^15 0.02 0.02 0.02 0 2 force @a
particle cloud ^ ^ ^-15 0.02 0.02 0.02 0 2 force @a
particle cloud ^15 ^ ^ 0.02 0.02 0.02 0 2 force @a
particle cloud ^-15 ^ ^ 0.02 0.02 0.02 0 2 force @a
tp @s ~ ~ ~ ~9.3 0
