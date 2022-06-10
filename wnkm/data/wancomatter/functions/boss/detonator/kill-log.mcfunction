execute if score @s hurtWeaponNumber matches -20 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"暴虐の雷鳴 デトネイター","color":"yellow","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -21 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"ストームボルト","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -22 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"スパークラッシュ","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -23 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"ダーククラウド","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -24 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"レイズブロー","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -25 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"デス・ライトニング","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -26 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"エレクトリカルフロー","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -28 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"ファイアレイン","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -29 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"パワードボム","color":"yellow"},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -31 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"デトネーションストーム","color":"yellow","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
execute if score @s hurtWeaponNumber matches -32 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"暁の霆","color":"yellow","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]
#execute if score @s hurtWeaponNumber matches -33 run tellraw @a ["",{"text":"[KILL] ","color":"dark_red"},{"text":"爆殺の雷鳴","color":"yellow","bold":true},{"text":" -> ","color":"white"},{"selector":"@s"}]

execute if score @s hurtWeaponNumber matches -33..-20 run tag @s remove flag