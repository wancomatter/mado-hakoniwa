scoreboard players add @e[tag=lightning_arrow_AEC] counter 1
execute if entity @e[tag=lightning_arrow_AEC,scores={counter=20},limit=1] as @e[tag=lightning_arrow_AEC,scores={counter=20}] run function wancomatter:skills/arrow/08/check_main
execute if entity @e[tag=lightning_arrow_AEC,limit=1] run schedule function wancomatter:skills/arrow/08/schedule 1t

