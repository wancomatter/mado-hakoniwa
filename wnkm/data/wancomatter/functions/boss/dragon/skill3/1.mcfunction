execute if score @s Cooldown3_max matches ..604 run scoreboard players set @s SelectItemSlot1 -1
execute if score @s Cooldown3_max matches 1 run function wancomatter:boss/dragon/skill3/2
execute if score @s Cooldown3_max matches 2..3 run function wancomatter:boss/dragon/skill3/3
execute if score @s Cooldown3_max matches 4 run function wancomatter:boss/dragon/skill3/5
execute if score @s Cooldown3_max matches 5..10 run function wancomatter:boss/dragon/skill3/6
execute if score @s Cooldown3_max matches 11..610 run function wancomatter:boss/dragon/skill3/7
execute if score @s Cooldown3_max matches 605.. run function wancomatter:boss/dragon/skill3/end