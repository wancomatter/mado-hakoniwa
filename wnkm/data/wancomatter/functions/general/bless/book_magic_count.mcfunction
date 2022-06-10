execute store result score #bless Cooldown1 run clear @s carrot_on_a_stick{magic_assist:1b} 0
execute store result score #bless Cooldown2 run clear @s carrot_on_a_stick{magic_attack:1b} 0
execute store result score #bless Cooldown3 run clear @s carrot_on_a_stick{magic_summon:1b} 0
scoreboard players operation #bless Cooldown1 += #bless Cooldown2
scoreboard players operation #bless Cooldown1 += #bless Cooldown3
scoreboard players operation #bless counter *= #bless Cooldown1
