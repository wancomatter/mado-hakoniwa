
execute if score @s hurtWeaponNumber matches -60 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"ネクロバレット","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -61 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -62 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトンホース・メリーゴーランド","color":"gray","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -63 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"ゾンビスプリンクラー","color":"dark_green"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -64 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトン親衛隊","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -65 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"腐豚降臨","color":"gold","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -66 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"DarknessOverload","color":"dark_purple","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -67 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"ゾンビホース・ジェットコースター","color":"dark_green","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -68 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"魑魅魍魎・パレード","color":"dark_gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -69 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"ブラックレイズ","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -71 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトン剣士","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -72 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトン斧士","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -73 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトン術士","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -74 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトン僧侶","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -75 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スケルトンライダー","color":"gray"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -76 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"冥界の宴","color":"dark_purple"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -77 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true},{"translate":"(%s)","color":"gray","with":[{"text":"冥界の門","color":"dark_purple"}]},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -79..-60 run tag @s remove flag
