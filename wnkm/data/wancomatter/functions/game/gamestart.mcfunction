fill -16 58 -16 16 84 16 air replace
setblock 0 57 0 minecraft:air
fill 18 65 18 -18 65 -18 air replace birch_wall_sign

execute if score #gamemode counter matches 1..9 run difficulty normal
execute if score #gamemode counter matches 11..19 unless score #difficult counter matches 2..4 run difficulty easy
execute if score #gamemode counter matches 11..19 if score #difficult counter matches 2 run difficulty normal
execute if score #gamemode counter matches 11..19 if score #difficult counter matches 3.. run difficulty hard
execute if score #gamemode counter matches 11..19 run scoreboard objectives remove boss_hate
execute if score #gamemode counter matches 11..19 run scoreboard objectives add boss_hate dummy
#scoreboard players set wnkm HP 0

#天祈結界の削除
execute if entity @e[tag=tenki,limit=1] run kill @e[tag=tenki]
#result関連のスコア削除
scoreboard objectives remove total_dealt
scoreboard objectives remove total_taken
#result関連のスコア追加
execute if score #result_setting Cooldown1 matches 1 run scoreboard objectives add total_dealt dummy "与ダメージ"
execute if score #result_setting Cooldown1 matches 1 run scoreboard players set #result total_dealt -1
execute if score #result_setting Cooldown2 matches 1 run scoreboard objectives add total_taken dummy "被ダメージ"
execute if score #result_setting Cooldown1 matches 1 run scoreboard players set #result total_taken -1
#teamArmor追加
execute unless score #teamArmor counter matches 1 run clear @a minecraft:leather_helmet{teamArmor:1b}
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11 run clear @a minecraft:leather_helmet{teamArmor:1b}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Red] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:11546150},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Aqua] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:3847130},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Yellow] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:16701501},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Green] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:6192150},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Purple] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:8991416},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=White] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:16383998},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Black] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:1908001},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Blue] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:3949738},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Pink] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:15961002},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Gold] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:16351261},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=Gray] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:10329495},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=DarkRed] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:11141120},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=DarkAqua] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:43690},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=DarkGreen] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:43520},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=DarkBlue] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:170},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #teamArmor counter matches 1 run item replace entity @a[team=DarkGray] armor.head with minecraft:leather_helmet{teamArmor:1b,display:{Name:'{"text":"Team Armor","italic":false}',color:4673362},Unbreakable:1b,AttributeModifiers:[{}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute if score #gamemode counter matches 11..19 run clear @a minecraft:leather_helmet{teamArmor:1b}

#スキル別の特殊な処理
tag @s remove offBlackShield
execute if entity @e[tag=hide-mode,limit=1] as @e[tag=hide-mode] run scoreboard players set @s subcounter 20
kill @e[tag=sandBag]
kill @e[tag=lobby_entity]

#プレイヤー状態管理
scoreboard players reset #lobby counter
scoreboard players operation #game counter = #gamemode counter
scoreboard players set #gametime counter -160
scoreboard players set #gametime dummy 0
title @a times 0 50 25
loot replace entity @a container.9 loot wancomatter:clear9
loot replace entity @a container.18 loot wancomatter:clear9
loot replace entity @a container.26 loot wancomatter:clear1
loot replace entity @a container.27 loot wancomatter:clear1
clear @a minecraft:black_stained_glass_pane{seal:1b}
scoreboard objectives remove pvpteamsaver
scoreboard objectives add pvpteamsaver dummy
scoreboard objectives remove teleporter
scoreboard objectives add teleporter dummy
scoreboard objectives remove gameNumber
scoreboard objectives add gameNumber dummy
scoreboard players add #gameNumber counter 1
scoreboard players operation @a gameNumber = #gameNumber counter

#sidebarに戦況を追加
scoreboard objectives remove info
scoreboard objectives add info dummy "戦況"
scoreboard objectives setdisplay sidebar info
execute if score #gamemode counter matches 11..19 as @a run scoreboard players operation @s pvpteamsaver = @s teamNumber
execute if score #gamemode counter matches 1 if entity @a[team=Red,limit=1] store result score Red info if entity @a[team=Red]
execute if score #gamemode counter matches 1 if entity @a[team=Aqua,limit=1] store result score Aqua info if entity @a[team=Aqua]
execute if score #gamemode counter matches 1 if entity @a[team=Yellow,limit=1] store result score Yellow info if entity @a[team=Yellow]
execute if score #gamemode counter matches 1 if entity @a[team=Green,limit=1] store result score Green info if entity @a[team=Green]
execute if score #gamemode counter matches 1 if entity @a[team=Purple,limit=1] store result score Purple info if entity @a[team=Purple]
execute if score #gamemode counter matches 1 if entity @a[team=White,limit=1] store result score White info if entity @a[team=White]
execute if score #gamemode counter matches 1 if entity @a[team=Black,limit=1] store result score Black info if entity @a[team=Black]
execute if score #gamemode counter matches 1 if entity @a[team=Blue,limit=1] store result score Blue info if entity @a[team=Blue]
execute if score #gamemode counter matches 1 if entity @a[team=Pink,limit=1] store result score Pink info if entity @a[team=Pink]
execute if score #gamemode counter matches 1 if entity @a[team=Gold,limit=1] store result score Gold info if entity @a[team=Gold]
execute if score #gamemode counter matches 1 if entity @a[team=Gray,limit=1] store result score Gray info if entity @a[team=Gray]
execute if score #gamemode counter matches 1 if entity @a[team=DarkRed,limit=1] store result score DarkRed info if entity @a[team=DarkRed]
execute if score #gamemode counter matches 1 if entity @a[team=DarkAqua,limit=1] store result score DarkAqua info if entity @a[team=DarkAqua]
execute if score #gamemode counter matches 1 if entity @a[team=DarkGreen,limit=1] store result score DarkGreen info if entity @a[team=DarkGreen]
execute if score #gamemode counter matches 1 if entity @a[team=DarkBlue,limit=1] store result score DarkBlue info if entity @a[team=DarkBlue]
execute if score #gamemode counter matches 1 if entity @a[team=DarkGray,limit=1] store result score DarkGray info if entity @a[team=DarkGray]
execute if score #gamemode counter matches 4 if entity @a[team=Red,limit=1] run scoreboard players set Red info 0
execute if score #gamemode counter matches 4 if entity @a[team=Aqua,limit=1] run scoreboard players set Aqua info 0
execute if score #gamemode counter matches 4 if entity @a[team=Yellow,limit=1] run scoreboard players set Yellow info 0
execute if score #gamemode counter matches 4 if entity @a[team=Green,limit=1] run scoreboard players set Green info 0
execute if score #gamemode counter matches 4 if entity @a[team=Purple,limit=1] run scoreboard players set Purple info 0
execute if score #gamemode counter matches 4 if entity @a[team=White,limit=1] run scoreboard players set White info 0
execute if score #gamemode counter matches 4 if entity @a[team=Black,limit=1] run scoreboard players set Black info 0
execute if score #gamemode counter matches 4 if entity @a[team=Blue,limit=1] run scoreboard players set Blue info 0
execute if score #gamemode counter matches 4 if entity @a[team=Pink,limit=1] run scoreboard players set Pink info 0
execute if score #gamemode counter matches 4 if entity @a[team=Gold,limit=1] run scoreboard players set Gold info 0
execute if score #gamemode counter matches 4 if entity @a[team=Gray,limit=1] run scoreboard players set Gray info 0
execute if score #gamemode counter matches 4 if entity @a[team=DarkRed,limit=1] run scoreboard players set DarkRed info 0
execute if score #gamemode counter matches 4 if entity @a[team=DarkAqua,limit=1] run scoreboard players set DarkAqua info 0
execute if score #gamemode counter matches 4 if entity @a[team=DarkGreen,limit=1] run scoreboard players set DarkGreen info 0
execute if score #gamemode counter matches 4 if entity @a[team=DarkBlue,limit=1] run scoreboard players set DarkBlue info 0
execute if score #gamemode counter matches 4 if entity @a[team=DarkGray,limit=1] run scoreboard players set DarkGray info 0
execute if score #gamemode counter matches 12 run team join Aqua @a[team=!z_spectate]
execute if score #gamemode counter matches 12 run team join Aqua 残り人数
execute if score #gamemode counter matches 12 store result score 残り人数 info if entity @a[team=Aqua]
execute if score #gamemode counter matches 1 if score #teamModify counter matches 11 run team join battleroyal 残り人数
execute if score #gamemode counter matches 1 if score #teamModify counter matches 11 store result score 残り人数 info if entity @a[team=battleroyal]

#制限時間のボスバー管理
scoreboard players operation #gametime subcounter2 = #gametime subcounter
scoreboard players operation #gametime subcounter2 *= #12 counter
scoreboard players operation #gametime subcounter2 *= #5 counter
bossbar remove wnkm:gametime
bossbar add wnkm:gametime ""
execute store result bossbar wnkm:gametime max run scoreboard players get #gametime subcounter2
execute store result bossbar wnkm:gametime value run scoreboard players get #gametime subcounter2
bossbar set wnkm:gametime style notched_10
bossbar set wnkm:gametime players @a
bossbar set wnkm:gametime color green
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 1 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 草原の村 ","color":"green"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 2 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" ネザー ","color":"dark_red"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 3 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 竹林 ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 4 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" ピラミッド ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 5 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 研究所 ","color":"white"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 6 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 川 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 1 if score #stagechanged subcounter matches 7 run bossbar set wnkm:gametime name [{"text":"【殲滅戦】","color":"aqua"},{"text":" 祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 1 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 凍の神殿 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 2..3 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 黒星の間 ","color":"dark_purple"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 4 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 死霊祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 12 if score #stagechanged subcounter2 matches 5 run bossbar set wnkm:gametime name [{"text":"【ボスバトル】","color":"aqua"},{"text":" 獣の雪洞 ","color":"dark_purple"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 1 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 草原の村 ","color":"green"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 2 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" ネザー ","color":"dark_red"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 3 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 竹林 ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 4 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" ピラミッド ","color":"yellow"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 5 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 研究所 ","color":"white"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 6 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 川 ","color":"aqua"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]
execute if score #gamemode counter matches 4 if score #stagechanged subcounter matches 7 run bossbar set wnkm:gametime name [{"text":"【TDM】","color":"aqua"},{"text":" 祭壇 ","color":"gray"},{"score":{"name":"#gametime","objective":"subcounter2"},"color":"aqua"}]


execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 run scoreboard players set #gametime counter -160
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 run scoreboard players set #gametime counter -260
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 run effect give @a minecraft:glowing 13 0 true
execute if score #gamemode counter matches 11..19 run scoreboard players set #gametime counter -460

execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 run function wancomatter:game/gamestart_glass
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 at @e[tag=spawnRed] run tp @a[team=Red] ~ ~2 ~
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 at @e[tag=spawnBlue] run tp @a[team=Blue] ~ ~2 ~
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 at @e[tag=spawnYellow] run tp @a[team=Yellow] ~ ~2 ~
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 1..9 at @e[tag=spawnGreen] run tp @a[team=Green] ~ ~2 ~
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 unless score #stagechanged subcounter matches 5 run tp @a 0 56 0
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 if score #stagechanged subcounter matches 5 run tp @a 0 33 0
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 unless score #stagechanged subcounter matches 5 run fill -40 54 -40 40 57 40 minecraft:white_stained_glass hollow
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 unless score #stagechanged subcounter matches 5 run fill -40 60 -40 40 57 40 minecraft:white_stained_glass hollow
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 unless score #stagechanged subcounter matches 5 run fill -39 57 -39 39 57 39 minecraft:air replace minecraft:white_stained_glass
execute if score #gamemode counter matches 1..9 if score #teamModify counter matches 11..19 if score #stagechanged subcounter matches 5 run fill 31 31 31 -31 36 -31 minecraft:white_stained_glass hollow
execute if score #gamemode counter matches 12 run tp @a[team=Aqua] @e[tag=firstspawnStand,limit=1,sort=nearest]
execute if score #gamemode counter matches 12 run scoreboard objectives add lifestock dummy
execute if score #gamemode counter matches 12 run scoreboard players operation @a[team=Aqua] lifestock = #pve_lifestock counter
execute if score #gamemode counter matches 12 as @a[team=Aqua] at @s store result score @s respawnX run data get entity @e[tag=spawnStand,limit=1,sort=nearest] Pos[0] 10
execute if score #gamemode counter matches 12 as @a[team=Aqua] at @s store result score @s respawnY run data get entity @e[tag=spawnStand,limit=1,sort=nearest] Pos[1] 10
execute if score #gamemode counter matches 12 as @a[team=Aqua] at @s store result score @s respawnZ run data get entity @e[tag=spawnStand,limit=1,sort=nearest] Pos[2] 10
execute if score #gamemode counter matches 4 as @a store result score @s respawnX run data get entity @s Pos[0] 10
execute if score #gamemode counter matches 4 as @a store result score @s respawnY run data get entity @s Pos[1] 10
execute if score #gamemode counter matches 4 as @a store result score @s respawnZ run data get entity @s Pos[2] 10
execute if score #gamemode counter matches 12 run kill @e[tag=spawnStand]

gamemode adventure @a[team=!z_spectate]
execute if entity @a[team=z_spectate,limit=1] run gamemode spectator @a[team=z_spectate]
execute if entity @a[team=z_spectate,limit=1] run scoreboard players reset @a[team=z_spectate] maxHP
