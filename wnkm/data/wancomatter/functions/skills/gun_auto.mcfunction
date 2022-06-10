execute if data entity @s SelectedItem.tag.Ammo store result score #gun_auto counter run data get entity @s SelectedItem.tag.Ammo
execute unless score #gun_auto counter matches 1.. run scoreboard players set @s autogun_shot 0
scoreboard players reset #gun_auto counter

execute if score @s autogun_shot matches 21.. run scoreboard players set @s autogun_shot 20
scoreboard players remove @s autogun_shot 1

execute if score @s holdItem matches 25 if score @s autogun_shot matches 14 run function wancomatter:skills/025/shot
execute if score @s holdItem matches 125 if score @s autogun_shot matches 14 run function wancomatter:skills/025/shot

execute if score @s holdItem matches 68 unless score @s autogun_shot matches ..0 unless score @s autogun_shot matches 2 run function wancomatter:skills/068/shot
execute if score @s holdItem matches 72 if score @s autogun_shot matches 3 run function wancomatter:skills/072/shot
execute if score @s holdItem matches 168 unless score @s autogun_shot matches ..0 unless score @s autogun_shot matches 2 run function wancomatter:skills/068/shot
execute if score @s holdItem matches 172 if score @s autogun_shot matches 3 run function wancomatter:skills/072/shot
execute if score @s CooldownX matches 1.. run scoreboard players set @s autogun_shot 0