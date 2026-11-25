scoreboard players add @s counter 1
execute if score @s counter matches 7.. run function wancomatter:boss/bear/child/skill8/summon_block
execute if score @s counter matches 10.. if score #difficult counter matches 2..4 run function wancomatter:boss/bear/child/skill8/summon_block
execute if score @s counter matches 12.. if score #difficult counter matches 4 run function wancomatter:boss/bear/child/skill8/summon_block
execute if score @s counter matches 55 run function wancomatter:boss/bear/child/skill8/summon_aec
