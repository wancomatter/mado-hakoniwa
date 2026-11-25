tag @s add phe
scoreboard players operation @a[tag=ehp] hurtByNumber = @s playerNumber
execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:custom_data":{blessItem:1b}}}}] as @a[tag=ehp] store result score @s hurtWeaponNumber run data get entity @a[tag=phe,limit=1,sort=nearest] SelectedItem.components."minecraft:custom_data".LegacySkill 1
tag @s remove phe
#execute as @a[tag=ehp] at @s run function wancomatter:general/damagetaken/main
tag @a[tag=ehp] remove ehp
advancement revoke @s only wancomatter:attack/phe
