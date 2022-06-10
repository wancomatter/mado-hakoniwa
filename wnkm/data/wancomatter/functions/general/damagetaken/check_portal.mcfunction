scoreboard players set @s dummy 0
execute if entity @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] run scoreboard players add @s dummy 1
execute if score @s dummy matches 1 unless data entity @a[tag=hurtBy,limit=1] {SelectedItem:{}} run scoreboard players add @s dummy 1
execute if score @s dummy matches 1 if data entity @a[tag=hurtBy,limit=1] {SelectedItem:{tag:{blessItem:1b}}} run scoreboard players add @s dummy 1
execute unless score @s dummy matches 2.. run scoreboard players set @s damageTaken 0
execute unless score @s dummy matches 2.. run tag @a[tag=hurtBy] remove hurtBy