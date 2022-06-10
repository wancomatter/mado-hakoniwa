scoreboard players add @s dummy 1

scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add user
execute at @a[tag=user] positioned ~ ~0.7 ~ rotated ~60 ~ run tp @s ~ ~ ~ ~ ~

execute if score @s dummy matches 6..11 unless entity @a[tag=user,limit=1,advancements={wancomatter:using_item/scythe=true},nbt={SelectedItem:{id:"minecraft:ender_eye",tag:{CustomModelData:114}}}] run function wancomatter:skills/114/fail
execute if score @s dummy matches 11 as @a[tag=user] run function wancomatter:skills/114/tick10
execute if score @s dummy matches 11..13 run function wancomatter:skills/114/tick11
tag @a[tag=user] remove user
scoreboard players reset #dummy
execute if score @s dummy matches 13.. run kill @s
