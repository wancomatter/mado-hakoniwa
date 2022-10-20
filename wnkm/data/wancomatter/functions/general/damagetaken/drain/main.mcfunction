scoreboard players set #-- dummy 0
execute store result score #-- dummy run data get entity @s ActiveEffects[{Id:32}].Amplifier

# Mana吸収の場合:レベル数値だけ吸収する
execute if score #-- dummy matches 0.. run function wancomatter:general/damagetaken/drain/mana

# HP吸収の割合:effect give @s minecraft:hero_of_the_village 1 256-(吸収％) true or false(true:魔法処理で加護が働く)
execute unless score #-- dummy matches 0.. run function wancomatter:general/damagetaken/drain/health

effect clear @s minecraft:hero_of_the_village
scoreboard players reset #-- dummy
