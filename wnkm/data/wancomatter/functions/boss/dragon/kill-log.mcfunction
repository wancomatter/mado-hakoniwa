
execute if score @s hurtWeaponNumber matches -80 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"80","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"ネクロバレット","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -81 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"81","color":"dark_purple","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -82 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"82","color":"gray","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -83 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"83","color":"dark_green"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -84 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"84","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -85 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"85","color":"gold","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -86 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"86","color":"dark_purple","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -87 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"87","color":"dark_green","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -88 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"雨雲","color":"#8888ff"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -89 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"89","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"ブラックレイズ","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -91 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"91","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -92 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"92","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -93 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"93","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -94 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"94","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -95 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"95","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -96 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"96","color":"dark_purple"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -97 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"97","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"冥界の門","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -99..-80 run tag @s remove flag
