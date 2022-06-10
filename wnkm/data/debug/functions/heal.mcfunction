#回復
scoreboard players operation @s HP = @s maxHP
scoreboard players operation @s HP *= #10 counter
scoreboard players operation @s Mana = @s maxMana
execute if score @s Cooldown1 matches 1.. run scoreboard players set @s Cooldown1 0
execute if score @s Cooldown2 matches 1.. run scoreboard players set @s Cooldown2 0
execute if score @s Cooldown3 matches 1.. run scoreboard players set @s Cooldown3 0
execute if score @s Cooldown4 matches 1.. run scoreboard players set @s Cooldown4 0
execute if score @s Cooldown5 matches 1.. run scoreboard players set @s Cooldown5 0
execute if score @s Cooldown6 matches 1.. run scoreboard players set @s Cooldown6 0
execute if score @s Cooldown7 matches 1.. run scoreboard players set @s Cooldown7 0
execute if score @s Cooldown8 matches 1.. run scoreboard players set @s Cooldown8 0
execute if score @s Cooldown9 matches 1.. run scoreboard players set @s Cooldown9 0