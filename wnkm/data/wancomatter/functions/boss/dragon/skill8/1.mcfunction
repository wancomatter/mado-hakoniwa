scoreboard players add @s counter 1

execute if score @s counter matches 1..51 run function wancomatter:boss/dragon/skill8/sound
execute if score @s counter matches 51.. run function wancomatter:boss/dragon/skill8/2
