tag @s add damagetaken_dummy
execute if entity @a[tag=!damagetaken_dummy,advancements={wancomatter:general/any-dealt=true},sort=nearest,limit=1] as @a[tag=!damagetaken_dummy,advancements={wancomatter:general/any-dealt=true},sort=nearest,limit=1] run tag @s add flag
execute if entity @s[type=player] as @a[tag=flag] if score @s teamNumber = @e[tag=damagetaken_dummy,limit=1,sort=nearest] teamNumber run tag @s remove flag
tag @s remove damagetaken_dummy
execute if entity @a[tag=flag,limit=1,sort=nearest,nbt=!{SelectedItem:{tag:{blessItem:1b}}}] store result score @s hurtWeaponNumber run data get entity @a[tag=flag,limit=1,sort=nearest] SelectedItem.tag.CustomModelData 1
execute if entity @a[tag=flag,limit=1] run scoreboard players operation @s hurtByNumber = @a[tag=flag,limit=1,sort=nearest] playerNumber
execute if entity @a[tag=flag,limit=1] run tag @a[tag=flag] remove flag
