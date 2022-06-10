#プレイヤー初ログイン処理
execute as @a unless score @s playerNumber matches 0.. run function wancomatter:general/p-first
#ロビー常時実行function
execute if score #lobby counter matches 1 run function wancomatter:lobby/tick
#ゲーム常時実行function
execute if score #game counter matches 1.. run function wancomatter:game/tick
#テレポーター
execute if entity @a[scores={teleporter=1..},limit=1] run scoreboard players remove @a[scores={teleporter=1..}] teleporter 1
execute if entity @e[tag=teleporter,limit=1] at @e[tag=teleporter] run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 1 1 normal @a
execute if entity @e[tag=teleporter,limit=1] at @e[tag=teleporter] positioned ~-0.5 ~ ~-0.5 if entity @a[scores={sneak=1..},dx=0,dy=0,dz=0,limit=1,gamemode=!spectator] if score #game counter matches 1.. as @a[scores={sneak=1..},dx=0,dy=0,dz=0,gamemode=!spectator] at @s run function wancomatter:game/pvp/teleporter
execute if entity @e[tag=teleporter,limit=1] at @e[tag=teleporter] positioned ~-0.5 ~ ~-0.5 if entity @a[scores={sneak=1..},dx=0,dy=0,dz=0,limit=1,gamemode=!spectator] if score #lobby counter matches 1.. as @a[scores={sneak=1..},dx=0,dy=0,dz=0,gamemode=!spectator] at @s run function wancomatter:lobby/teleporter

#チームナンバー書き換え
scoreboard players add #clock_teamnumber counter 1
execute if score #clock_teamnumber counter matches 50.. run function wancomatter:general/teamnumber_set

#スペクテイターから復活した人向けの処理
execute as @a[gamemode=!spectator] unless score @s maxHP matches 1.. run function wancomatter:general/reborn
#奈落対策
execute as @a positioned as @s if entity @s[y=-50,dy=-100] run function wancomatter:game/void


#経験値オーブとアイテムの処遇
execute if entity @e[type=experience_orb,limit=1] run kill @e[type=experience_orb]
execute if entity @e[type=trident,tag=trident_neptune,limit=1] as @e[type=trident,tag=trident_neptune] at @s if entity @s[y=-10,dy=10] run function wancomatter:general/item-neptune-return
execute if entity @e[type=item,tag=!isitem,limit=1] as @e[type=item,tag=!isitem] run function wancomatter:general/is_item

#20tick周期
scoreboard players add #20tick counter 1
execute if score #20tick counter matches 20.. run scoreboard players set #20tick counter 0

#防具系の特殊効果
execute if entity @a[tag=rabbitfoot_sneak,limit=1] as @a[tag=rabbitfoot_sneak] unless score @s sneak matches 1.. run effect clear @s minecraft:jump_boost
execute if entity @a[tag=rabbitfoot_sneak,limit=1] as @a[tag=rabbitfoot_sneak] unless score @s sneak matches 1.. run tag @s remove rabbitfoot_sneak
execute if entity @a[tag=rabbitfoot,limit=1] as @a[tag=rabbitfoot] run effect give @s minecraft:jump_boost 1 1 false
execute if entity @a[tag=rabbitfoot,tag=!rabbitfoot_sneak,scores={sneak=1..},limit=1] as @a[tag=rabbitfoot,tag=!rabbitfoot_sneak,scores={sneak=1..}] run tag @s add rabbitfoot_sneak
execute if entity @a[tag=rabbitfoot,scores={sneak=1..},limit=1] as @a[tag=rabbitfoot,scores={sneak=1..}] run effect give @s minecraft:jump_boost 11 3 false

execute if entity @a[tag=earth_legs,limit=1] as @a[tag=earth_legs] at @s run function wancomatter:general/earth_legs
execute if entity @a[tag=floatboots,limit=1] as @a[tag=floatboots] at @s run function wancomatter:general/float_boots
execute if entity @e[tag=sliding_slime,limit=1] as @e[tag=sliding_slime] at @s run function wancomatter:general/sliding_boots/slime_kill
execute if entity @a[tag=sliding_boots,limit=1] as @a[tag=sliding_boots] at @s run function wancomatter:general/sliding_boots/tick
execute if entity @a[tag=ice_boots,limit=1,gamemode=!spectator] as @a[tag=ice_boots,gamemode=!spectator] at @s if block ~ ~0.1 ~ #wancomatter:3air positioned ~ ~-0.9 ~ run function wancomatter:general/ice_boots/check

execute if entity @a[tag=resistboots_sneaking,limit=1] as @a[tag=resistboots_sneaking] unless score @s sneak matches 1.. run attribute @s minecraft:generic.knockback_resistance modifier remove eb-0-123-45-6
execute if entity @a[tag=resistboots_sneaking,limit=1] as @a[tag=resistboots_sneaking] unless score @s sneak matches 1.. run tag @s remove resistboots_sneaking
execute if entity @a[tag=resistboots,tag=!resistboots_sneaking,limit=1] as @a[tag=resistboots,tag=!resistboots_sneaking,scores={sneak=1..}] run attribute @s minecraft:generic.knockback_resistance modifier add eb-0-123-45-6 "resist_boots" 1 add
execute if entity @a[tag=resistboots,tag=!resistboots_sneaking,limit=1] as @a[tag=resistboots,tag=!resistboots_sneaking,scores={sneak=1..}] run tag @s add resistboots_sneaking

#加護:サバイブ免疫のデバフ軽減
execute if entity @a[tag=bless_of_survive,limit=1] as @a[tag=bless_of_survive] if data entity @s {ActiveEffects:[{Id:18,Ambient:0b}]} run function wancomatter:general/bless/bless-of-survive/18
execute if entity @a[tag=bless_of_survive,limit=1] as @a[tag=bless_of_survive] if data entity @s {ActiveEffects:[{Id:19,Ambient:0b}]} run function wancomatter:general/bless/bless-of-survive/19
execute if entity @a[tag=bless_of_survive,limit=1] as @a[tag=bless_of_survive] if data entity @s {ActiveEffects:[{Id:20,Ambient:0b}]} run function wancomatter:general/bless/bless-of-survive/20
execute if entity @a[tag=bless_of_survive,limit=1] as @a[tag=bless_of_survive] if data entity @s {ActiveEffects:[{Id:24,Ambient:0b}]} run function wancomatter:general/bless/bless-of-survive/24

#加護:黒衣の特殊透明処理
execute if entity @a[tag=bless_invisible,tag=!bless_invisible_now,limit=1] as @a[tag=bless_invisible,tag=!bless_invisible_now] if data entity @s {ActiveEffects:[{Id:14}]} run function wancomatter:general/bless/invisible
execute if entity @a[tag=bless_invisible_now,limit=1] as @a[tag=bless_invisible_now] unless data entity @s {ActiveEffects:[{Id:14}]} run function wancomatter:general/bless/invisible-clear

#加護:大食らいのデバフ軽減
execute if entity @a[tag=bless_of_hunger,limit=1] as @a[tag=bless_of_hunger] if data entity @s {ActiveEffects:[{Id:27,Ambient:0b}]} run function wancomatter:general/bless/bless-of-hunger

#ハスク、ゾンビのドラウンド化防止
execute if entity @e[tag=type_zombie] as @e[tag=type_zombie] at @s if block ~ ~ ~ water positioned ~ ~0.01 ~ rotated ~ 0 run tp @s ^ ^ ^0.14
execute if entity @e[tag=type_zombie] as @e[tag=type_zombie] store result score @s dummy run data get entity @s InWaterTime
execute if entity @e[tag=type_zombie,scores={dummy=1..}] as @e[tag=type_zombie,scores={dummy=1..}] run data merge entity @s {InWaterTime:-2147483648}

execute if entity @e[tag=readyKill,limit=1] run tp @e[tag=readyKill] 0 -128 0
execute if entity @e[tag=readyKill,limit=1] run kill @e[tag=readyKill]

#手持ちアイテム(人参棒)の番号検知
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},limit=1] as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] store result score @s holdItem run data get entity @s SelectedItem.tag.CustomModelData 1
execute if entity @a[scores={hold_gun=1..},limit=1] as @a[scores={hold_gun=1..}] unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} run scoreboard players set @s holdItem 0

#両手剣の片手持ち検知
execute if entity @a[nbt={Inventory:[{Slot:-106b}],SelectedItem:{id:"minecraft:iron_sword"}},limit=1] as @a[nbt={Inventory:[{Slot:-106b}],SelectedItem:{id:"minecraft:iron_sword"}}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:tipped_arrow"}]}] at @s run function wancomatter:general/action/claymore_offhand

execute if entity @e[tag=mob-mDamage,limit=1] run effect clear @e[tag=mob-mDamage] minecraft:resistance
execute if entity @e[tag=mob-mDamage,limit=1] run tag @e[tag=mob-mDamage] remove mob-mDamage
#HP自然回復
execute if entity @a[scores={HPRegenCount=1..},gamemode=!spectator,limit=1] run scoreboard players add @a[scores={HPRegenCount=1..},gamemode=!spectator] HPCount 1
execute if entity @a[scores={HPRegenCount=1..},gamemode=!spectator,limit=1] as @a[scores={HPRegenCount=1..},gamemode=!spectator] run scoreboard players operation @s ManaOperation = @s maxHP
execute if entity @a[scores={HPRegenCount=1..},gamemode=!spectator,limit=1] as @a[scores={HPRegenCount=1..},gamemode=!spectator] run scoreboard players operation @s ManaOperation *= #10 counter
execute if entity @a[scores={HPRegenCount=1..},gamemode=!spectator,limit=1] as @a[scores={HPRegenCount=1..},gamemode=!spectator] if score @s HPCount >= @s HPRegenCount run function wancomatter:general/natural_hp_regen
execute if entity @a[scores={HPRegenCount=1..},gamemode=!spectator,limit=1] as @a[scores={HPRegenCount=1..},gamemode=!spectator] if score @s HP > @s ManaOperation run scoreboard players operation @s HP = @s ManaOperation

#エリトラで飛んでいる時に自然回復をオフにする
execute if entity @a[scores={aviate=1..},limit=1] run scoreboard players set @a[scores={aviate=1..}] ManaCount 0
#MP自然回復と減少制御
execute as @a if score @s Mana < @s maxMana run scoreboard players operation @s ManaCount += @s ManaRegenCount
execute if entity @a[scores={ManaCount=2000..},limit=1] as @a[scores={ManaCount=2000..}] run function wancomatter:general/mana_regen
execute as @a if score @s Mana > @s maxMana run scoreboard players operation @s Mana = @s maxMana
execute as @a store result score @s foodSaturation run data get entity @s foodSaturationLevel
execute if entity @a[scores={foodSaturation=1..},limit=1] as @a[scores={foodSaturation=1..}] run tag @s add removeFoodS
execute if entity @a[tag=removeFoodS,limit=1] as @a[tag=removeFoodS] run effect give @s hunger 1 255 true
execute if entity @a[tag=removeFoodS,scores={foodSaturation=..0},limit=1] as @a[tag=removeFoodS,scores={foodSaturation=..0}] run effect clear @s hunger
execute if entity @a[tag=removeFoodS,scores={foodSaturation=..0},limit=1] as @a[tag=removeFoodS,scores={foodSaturation=..0}] run tag @s remove removeFoodS

execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players operation @s HPdisplay1 = @s Mana
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players operation @s ManaOperation = @s maxMana
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players operation @s HPdisplay1 *= #20 counter
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players operation @s HPdisplay1 += @s ManaOperation
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players operation @s HPdisplay1 /= @s ManaOperation
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0},tag=!bless_of_survive] run scoreboard players remove @s HPdisplay1 1
execute if entity @a[scores={foodSaturation=..0},tag=bless_of_survive,limit=1] run scoreboard players set @a[scores={foodSaturation=..0},tag=bless_of_survive] HPdisplay1 18
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0}] unless score @s food = @s HPdisplay1 if score @s food < @s HPdisplay1 run effect give @s saturation 1 0 true
execute if entity @a[scores={foodSaturation=..0},limit=1] as @a[scores={foodSaturation=..0}] unless score @s food = @s HPdisplay1 if score @s food > @s HPdisplay1 run tag @s add noMatchMana
execute if entity @a[tag=noMatchMana,limit=1] as @a[tag=noMatchMana] run function wancomatter:general/mana/no_match_mana
execute if entity @a[scores={food=0},limit=1] run effect give @a[scores={food=0}] saturation 1 0 true


#スキルクールダウン(バニラxpバーを使用)
execute if entity @a[level=1..,limit=1] run xp add @a[level=1..] -2147483648 levels

execute if entity @a[scores={Cooldown1=1..},limit=1] as @a[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @a[scores={Cooldown2=1..},limit=1] as @a[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @a[scores={Cooldown3=1..},limit=1] as @a[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @a[scores={Cooldown4=1..},limit=1] as @a[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @a[scores={Cooldown5=1..},limit=1] as @a[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @a[scores={Cooldown6=1..},limit=1] as @a[scores={Cooldown6=1..}] run scoreboard players remove @s Cooldown6 1
execute if entity @a[scores={Cooldown7=1..},limit=1] as @a[scores={Cooldown7=1..}] run scoreboard players remove @s Cooldown7 1
execute if entity @a[scores={Cooldown8=1..},limit=1] as @a[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @a[scores={Cooldown9=1..},limit=1] as @a[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1
#CTが0になった時の処理
execute if entity @a[scores={Cooldown1=0},limit=1] as @a[scores={Cooldown1=0}] positioned as @s run function wancomatter:general/cool-reset/1
execute if entity @a[scores={Cooldown2=0},limit=1] as @a[scores={Cooldown2=0}] positioned as @s run function wancomatter:general/cool-reset/2
execute if entity @a[scores={Cooldown3=0},limit=1] as @a[scores={Cooldown3=0}] positioned as @s run function wancomatter:general/cool-reset/3
execute if entity @a[scores={Cooldown4=0},limit=1] as @a[scores={Cooldown4=0}] positioned as @s run function wancomatter:general/cool-reset/4
execute if entity @a[scores={Cooldown5=0},limit=1] as @a[scores={Cooldown5=0}] positioned as @s run function wancomatter:general/cool-reset/5
execute if entity @a[scores={Cooldown6=0},limit=1] as @a[scores={Cooldown6=0}] positioned as @s run function wancomatter:general/cool-reset/6
execute if entity @a[scores={Cooldown7=0},limit=1] as @a[scores={Cooldown7=0}] positioned as @s run function wancomatter:general/cool-reset/7
execute if entity @a[scores={Cooldown8=0},limit=1] as @a[scores={Cooldown8=0}] positioned as @s run function wancomatter:general/cool-reset/8
execute if entity @a[scores={Cooldown9=0},limit=1] as @a[scores={Cooldown9=0}] positioned as @s run function wancomatter:general/cool-reset/9
#同一スキルCTに関しての処理
execute as @a if data entity @s SelectedItem.tag.usedSkillSlot store result score @s Cooldown_slot run data get entity @s SelectedItem.tag.usedSkillSlot
execute if entity @a[scores={Cooldown_slot=0},limit=1] as @a[scores={Cooldown_slot=0}] if entity @s[scores={Cooldown1=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=1},limit=1] as @a[scores={Cooldown_slot=1}] if entity @s[scores={Cooldown2=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=2},limit=1] as @a[scores={Cooldown_slot=2}] if entity @s[scores={Cooldown3=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=3},limit=1] as @a[scores={Cooldown_slot=3}] if entity @s[scores={Cooldown4=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=4},limit=1] as @a[scores={Cooldown_slot=4}] if entity @s[scores={Cooldown5=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=5},limit=1] as @a[scores={Cooldown_slot=5}] if entity @s[scores={Cooldown6=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=6},limit=1] as @a[scores={Cooldown_slot=6}] if entity @s[scores={Cooldown7=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=7},limit=1] as @a[scores={Cooldown_slot=7}] if entity @s[scores={Cooldown8=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=8},limit=1] as @a[scores={Cooldown_slot=8}] if entity @s[scores={Cooldown9=..0}] run function wancomatter:general/cooldown-1
execute if entity @a[scores={Cooldown_slot=0..8},limit=1] as @a[scores={Cooldown_slot=0..8}] run tag @s add Cooldown_changeSlot
#スキルCTのdisplay処理
execute as @a[tag=!Cooldown_changeSlot] store result score @s Cooldown_slot run data get entity @s SelectedItemSlot
execute if entity @a[tag=Cooldown_changeSlot,limit=1] run tag @a[tag=Cooldown_changeSlot] remove Cooldown_changeSlot
execute if entity @a[scores={Cooldown_slot=0},limit=1] as @a[scores={Cooldown_slot=0}] run scoreboard players operation @s CooldownX = @s Cooldown1
execute if entity @a[scores={Cooldown_slot=1},limit=1] as @a[scores={Cooldown_slot=1}] run scoreboard players operation @s CooldownX = @s Cooldown2
execute if entity @a[scores={Cooldown_slot=2},limit=1] as @a[scores={Cooldown_slot=2}] run scoreboard players operation @s CooldownX = @s Cooldown3
execute if entity @a[scores={Cooldown_slot=3},limit=1] as @a[scores={Cooldown_slot=3}] run scoreboard players operation @s CooldownX = @s Cooldown4
execute if entity @a[scores={Cooldown_slot=4},limit=1] as @a[scores={Cooldown_slot=4}] run scoreboard players operation @s CooldownX = @s Cooldown5
execute if entity @a[scores={Cooldown_slot=5},limit=1] as @a[scores={Cooldown_slot=5}] run scoreboard players operation @s CooldownX = @s Cooldown6
execute if entity @a[scores={Cooldown_slot=6},limit=1] as @a[scores={Cooldown_slot=6}] run scoreboard players operation @s CooldownX = @s Cooldown7
execute if entity @a[scores={Cooldown_slot=7},limit=1] as @a[scores={Cooldown_slot=7}] run scoreboard players operation @s CooldownX = @s Cooldown8
execute if entity @a[scores={Cooldown_slot=8},limit=1] as @a[scores={Cooldown_slot=8}] run scoreboard players operation @s CooldownX = @s Cooldown9
execute if entity @a[scores={Cooldown_slot=0},limit=1] as @a[scores={Cooldown_slot=0}] run scoreboard players operation @s CooldownX_max = @s Cooldown1_max
execute if entity @a[scores={Cooldown_slot=1},limit=1] as @a[scores={Cooldown_slot=1}] run scoreboard players operation @s CooldownX_max = @s Cooldown2_max
execute if entity @a[scores={Cooldown_slot=2},limit=1] as @a[scores={Cooldown_slot=2}] run scoreboard players operation @s CooldownX_max = @s Cooldown3_max
execute if entity @a[scores={Cooldown_slot=3},limit=1] as @a[scores={Cooldown_slot=3}] run scoreboard players operation @s CooldownX_max = @s Cooldown4_max
execute if entity @a[scores={Cooldown_slot=4},limit=1] as @a[scores={Cooldown_slot=4}] run scoreboard players operation @s CooldownX_max = @s Cooldown5_max
execute if entity @a[scores={Cooldown_slot=5},limit=1] as @a[scores={Cooldown_slot=5}] run scoreboard players operation @s CooldownX_max = @s Cooldown6_max
execute if entity @a[scores={Cooldown_slot=6},limit=1] as @a[scores={Cooldown_slot=6}] run scoreboard players operation @s CooldownX_max = @s Cooldown7_max
execute if entity @a[scores={Cooldown_slot=7},limit=1] as @a[scores={Cooldown_slot=7}] run scoreboard players operation @s CooldownX_max = @s Cooldown8_max
execute if entity @a[scores={Cooldown_slot=8},limit=1] as @a[scores={Cooldown_slot=8}] run scoreboard players operation @s CooldownX_max = @s Cooldown9_max
execute as @a[scores={CooldownX=1..}] run function wancomatter:general/cooldown
scoreboard players reset @a[scores={Cooldown_slot=0..}] Cooldown_slot

#銃を持っている時の弾数表示
execute if entity @a[scores={holdItem=5},limit=1] as @a[scores={holdItem=5}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=25},limit=1] as @a[scores={holdItem=25}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=68},limit=1] as @a[scores={holdItem=68}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=72},limit=1] as @a[scores={holdItem=72}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=86},limit=1] as @a[scores={holdItem=86}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=105},limit=1] as @a[scores={holdItem=105}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=125},limit=1] as @a[scores={holdItem=125}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=168},limit=1] as @a[scores={holdItem=168}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=172},limit=1] as @a[scores={holdItem=172}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show
execute if entity @a[scores={holdItem=186},limit=1] as @a[scores={holdItem=186}] unless score @s CooldownX matches 1.. run function wancomatter:skills/gun-ammo-show

#Awakening処理
execute if entity @a[gamemode=!spectator,scores={sneak=1..,Mana=13..,CooldownX=..0},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{Awakening:1b}}},limit=1] run tag @a[gamemode=!spectator,scores={sneak=1..,Mana=13..,CooldownX=..0},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{Awakening:1b}}}] add AwakeningCount
execute if entity @a[tag=AwakeningCount,limit=1] as @a[tag=AwakeningCount] store success score @s dummy run data get entity @s SelectedItem.tag.usedSkillSlot
execute if entity @a[tag=AwakeningCount,scores={dummy=0},limit=1] as @a[tag=AwakeningCount,scores={dummy=0}] run function wancomatter:skills/097/count
execute if entity @e[tag=AwakeCount,tag=!AwakeCounted] run kill @e[tag=AwakeCount,tag=!AwakeCounted]
execute if entity @e[tag=AwakeCount,tag=AwakeCounted] run tag @e[tag=AwakeCounted] remove AwakeCounted
execute if entity @a[tag=AwakeningCount,limit=1] run tag @a[tag=AwakeningCount] remove AwakeningCount
#スターバーストストリーム処理
execute if entity @a[gamemode=!spectator,scores={sneak=1..,Mana=40..,CooldownX=..0},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{elucidator:1b}},Inventory:[{Slot:-106b,tag:{darkRepulser_available:1b}}]},limit=1] run tag @a[gamemode=!spectator,scores={sneak=1..,Mana=40..,CooldownX=..0},nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{elucidator:1b}},Inventory:[{Slot:-106b,tag:{darkRepulser_available:1b}}]}] add StarBurstCount_p
execute if entity @a[tag=StarBurstCount_p,limit=1] as @a[tag=StarBurstCount_p] store success score @s dummy run data get entity @s SelectedItem.tag.usedSkillSlot
execute if entity @a[tag=StarBurstCount_p,scores={dummy=0},limit=1] as @a[tag=StarBurstCount_p,scores={dummy=0}] run function wancomatter:skills/113/count
execute if entity @e[tag=StarBurstCount,tag=!StarBurstCounted] run kill @e[tag=StarBurstCount,tag=!StarBurstCounted]
execute if entity @e[tag=StarBurstCount,tag=StarBurstCounted] run tag @e[tag=StarBurstCounted] remove StarBurstCounted
execute if entity @a[tag=StarBurstCount_p,limit=1] run tag @a[tag=StarBurstCount_p] remove StarBurstCount_p
#特殊クロスボウの装填処理
execute if entity @a[gamemode=!spectator,advancements={wancomatter:using_item/crossbow_special_charge=true},predicate=wancomatter:crossbow/special,limit=1] as @a[gamemode=!spectator,advancements={wancomatter:using_item/crossbow_special_charge=true},predicate=wancomatter:crossbow/special] run scoreboard players add @s crossbow_sneak 1
execute if entity @a[scores={crossbow_sneak=1..},limit=1] as @a[scores={crossbow_sneak=1..}] at @s run function wancomatter:skills/crossbow/special_charge/root
#爆弾-30
execute if entity @e[tag=summon_bomb,limit=1] as @e[tag=summon_bomb] at @s run function wancomatter:skills/030/tick

#スキルの予測表示
execute if entity @a[gamemode=!spectator,scores={holdItem=111,Mana=2..},limit=1] as @a[gamemode=!spectator,scores={holdItem=111,Mana=2..}] at @s run function wancomatter:skills/111/highlight

#スロット変更検知(スロットを切り替えた場合はSelectItemSlot1=-1となり、現在選択スロット情報はSelectItemSlot2に保存)
execute as @a[gamemode=!spectator] store result score @s SelectItemSlot1 run data get entity @s SelectedItemSlot
execute as @a[gamemode=!spectator] unless score @s SelectItemSlot1 = @s SelectItemSlot2 run tag @s add flag
execute as @a[gamemode=!spectator] run scoreboard players operation @s SelectItemSlot2 = @s SelectItemSlot1
execute if entity @a[limit=1,tag=flag] run scoreboard players set @a[tag=flag] SelectItemSlot1 -1
execute if entity @a[limit=1,tag=flag] run tag @a[tag=flag] remove flag

#人参棒処理
execute if entity @a[limit=1,scores={rod=1..}] as @a[scores={rod=1..}] at @s run function wancomatter:skills/rod
execute if entity @a[limit=1,scores={rod2=1..}] as @a[scores={rod2=1..}] at @s run function wancomatter:skills/rod2
execute if entity @a[limit=1,scores={trident=1..},advancements={wancomatter:general/any-dealt=false}] as @a[scores={trident=1..},advancements={wancomatter:general/any-dealt=false}] at @s run function wancomatter:skills/trident
execute if entity @a[limit=1,scores={trident=1..}] run scoreboard players reset @a[scores={trident=1..}] trident
execute if entity @a[limit=1,scores={fishrod=1..}] as @a[scores={fishrod=1..}] at @s run function wancomatter:skills/fishrod
#ARとかSMG等の連射銃に対応する為のあれ
execute if entity @a[limit=1,scores={autogun_shot=1..}] as @a[scores={autogun_shot=1..}] at @s run function wancomatter:skills/gun_auto

#インベントリ変更検知からの処理
execute if entity @a[advancements={wancomatter:general/inventory_changed=true},limit=1] as @a[advancements={wancomatter:general/inventory_changed=true}] run function wancomatter:general/inventory-changed
#スロット変更時に変化するアイテム系
execute if entity @a[tag=hasDarkRequlser,scores={SelectItemSlot1=-1},limit=1] as @a[tag=hasDarkRequlser,scores={SelectItemSlot1=-1}] run function wancomatter:skills/116/check
execute if entity @a[tag=hasThrowAxe,scores={SelectItemSlot1=-1},limit=1] as @a[tag=hasThrowAxe,scores={SelectItemSlot1=-1}] run function wancomatter:skills/108/check
execute if entity @a[scores={SelectItemSlot1=-1,autogun_shot=1..},limit=1] as @a[scores={SelectItemSlot1=-1,autogun_shot=1..}] run scoreboard players set @s autogun_shot 0

#銃のリロード検知と処理(ドロップ検知)
execute if entity @a[scores={rod_drop=1..},limit=1] as @a[scores={rod_drop=1..}] run function wancomatter:general/action/rod_drop

#ボス系統
execute if entity @e[tag=boss,limit=1] run function wancomatter:boss/tick

#ヒノキのパリィ処理
execute if entity @a[tag=yggdrasil_parry,scores={damageTaken=1..},limit=1] as @a[tag=yggdrasil_parry,scores={damageTaken=1..},limit=1] at @s run function wancomatter:skills/109/parry
#黒の盾-blackshield
execute if entity @e[tag=BlackShieldStand,limit=1] as @e[tag=BlackShieldStand] at @s run function wancomatter:skills/blackshield/tick

execute if entity @a[tag=damagetaken] run tag @a[tag=damagetaken] remove damagetaken
#tag=mobR(騎乗する為にHP表示がされるmob)のダメージ処理
execute if entity @e[tag=mobR,limit=1] as @e[tag=mobR] run function wancomatter:general/mob_rideable
#HP回復処理
execute if entity @e[scores={HPheal=1..,maxHP=1..},tag=!noMob,limit=1] as @e[scores={HPheal=1..,maxHP=1..},tag=!noMob] at @s run function wancomatter:general/hp_heal
execute if entity @e[scores={HPheal=1..},limit=1] as @e[scores={HPheal=1..}] run scoreboard players reset @s HPheal
#ダメージ処理
execute if entity @a[limit=1,scores={HPregene=0..}] run scoreboard players remove @a[scores={HPregene=0..}] HPregene 1
execute if entity @a[limit=1,scores={HPregene=0}] run effect clear @a[scores={HPregene=0}] regeneration
execute as @a[tag=!hpd2] unless score @s HP = @s HPdisplay2 run tag @s add hpd
execute if entity @a[limit=1,tag=hpd2] run function wancomatter:general/hp-display2
execute if entity @a[limit=1,tag=hpd] as @a[tag=hpd] unless score @s maxHP matches 0.. run tag @s remove hpd
execute if entity @a[limit=1,tag=hpd] run function wancomatter:general/hp-display
execute as @a run scoreboard players operation @s HPdisplay1 = @s HP
execute as @a run scoreboard players operation @s HPdisplay2 = @s HP
execute as @a run scoreboard players operation @s HPdisplay1 /= #10 counter
execute as @a run scoreboard players operation @s HPdisplay2 %= #10 counter
execute as @a[scores={maxHP=1..}] run title @s actionbar [{"text":"HP:","color":"dark_red","bold":true,"underlined":true},{"score":{"name":"@s","objective":"HPdisplay1"}},{"text":"."},{"score":{"name":"@s","objective":"HPdisplay2"}},{"text":"/"},{"score":{"name":"@s","objective":"maxHP"}},{"text":"  ","color":"white","underlined":false},{"text":"MP:","color":"aqua"},{"score":{"name":"@s","objective":"Mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"maxMana"},"color":"aqua"}]
execute as @a run scoreboard players operation @s HPdisplay2 = @s HP
execute as @a run scoreboard players operation @s belowHP = @s HP
execute as @a run scoreboard players operation @s belowHP /= #10 counter
# モブ初期化
execute if entity @e[tag=mobInit,limit=1] as @e[tag=mobInit] run function wancomatter:general/mob-initialize
execute if entity @e[tag=mob,tag=!AlreadyInitMob,limit=1] as @e[tag=mob,tag=!AlreadyInitMob] run function mob_manager:init/
#  --モブ召喚例--  /summon minecraft:creeper ~ ~ ~ {Tags:["mob","mobInit"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200}
execute if entity @e[tag=magicDamage2,tag=!damagetaken,limit=1] run tag @e[tag=magicDamage2,tag=!damagetaken,limit=1] remove magicDamage2
#huryByNumberの保存時間とか
execute if entity @a[scores={hurtByTime=1..},limit=1] run scoreboard players add @a[scores={hurtByTime=1..}] hurtByTime 1
execute if entity @a[scores={hurtByTime=60..},limit=1] run scoreboard players reset @a[scores={hurtByTime=60..}] hurtWeaponNumber
execute if entity @a[scores={hurtByTime=60..},limit=1] run scoreboard players reset @a[scores={hurtByTime=60..}] lastHurtByNumber
execute if entity @a[scores={hurtByTime=60..},limit=1] run scoreboard players reset @a[scores={hurtByTime=60..}] hurtByTime
execute if entity @a[scores={HP=..0},tag=!noMob,limit=1] as @a[scores={HP=..0},tag=!noMob] at @s run function wancomatter:general/kill-log/get-kill

#与ダメ表示用アマスタの事後処理
execute if entity @e[tag=damage_indicator,limit=1] as @e[tag=damage_indicator] at @s run function wancomatter:general/damagetaken/dmg_indi_tick
#スキルクールタイム処理
execute if entity @a[limit=1,scores={CooldownX=1..},tag=skill_success] as @a[scores={CooldownX=1..},tag=skill_success] at @s run function wancomatter:skills/cooldown
execute if entity @a[scores={CooldownX=1..},limit=1] run scoreboard players reset @a[scores={CooldownX=1..}] CooldownX
execute if entity @a[scores={CooldownX_max=1..},limit=1] run scoreboard players reset @a[scores={CooldownX_max=1..}] CooldownX_max
#死亡→復活処理
execute if entity @a[limit=1,scores={deathTimer=-2147483648..2147483647}] as @a[scores={deathTimer=-2147483648..2147483647}] run function wancomatter:general/deathtimer

#銃のリロード用の前tick検知処理
execute as @a if score @s hold_gun matches 1.. unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} run scoreboard players set @s hold_gun 0
execute as @a if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} store result score @s hold_gun run data get entity @s SelectedItem.tag.CustomModelData 1


#飛来槍のチャージ検知
execute if entity @a[gamemode=!spectator,scores={holdItem=107,sneak=1..},limit=1] as @a[gamemode=!spectator,scores={holdItem=107,sneak=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{CustomModelData:107}}]}] store success score @s dummy run data get entity @s SelectedItem.tag.usedSkillSlot
execute if entity @a[gamemode=!spectator,scores={holdItem=107,sneak=1..,dummy=0},limit=1] as @a[gamemode=!spectator,scores={holdItem=107,sneak=1..,dummy=0}] run function wancomatter:skills/107/charged/count
execute if entity @e[tag=kusaCharge,tag=!kusaCounted] run kill @e[tag=kusaCharge,tag=!kusaCounted]
execute if entity @e[tag=kusaCharge,tag=kusaCounted] run tag @e[tag=kusaCharge,tag=kusaCounted] remove kusaCounted
#STM-110の鈍足用
execute if entity @a[gamemode=!spectator,scores={holdItem=172,sneak=1..,CooldownX=..0},limit=1] at @a[gamemode=!spectator,scores={holdItem=172,sneak=1..,CooldownX=..0}] run summon area_effect_cloud ~ ~ ~ {Radius:0.2f,Duration:5,Age:4,WaitTime:1,Particle:"dust 0 0 0 0",Effects:[{Id:2,Amplifier:5b,Duration:2,Ambient:1b,ShowParticles:0b,ShowIcon:1b}]}

#instantDMGS_timeの管理
execute if entity @e[scores={instantDMGS_time=1..},limit=1] as @e[scores={instantDMGS_time=1..}] run function wancomatter:general/instant_damage_shield
#スコアリセット等
execute if entity @a[limit=1,advancements={wancomatter:using_item/crossbow_special_charge=true}] run advancement revoke @a[advancements={wancomatter:using_item/crossbow_special_charge=true}] only wancomatter:using_item/crossbow_special_charge
execute if entity @a[limit=1,advancements={wancomatter:using_item/ballista_scope=true}] run advancement revoke @a[advancements={wancomatter:using_item/ballista_scope=true}] only wancomatter:using_item/ballista_scope
execute if entity @a[limit=1,advancements={wancomatter:using_item/scythe=true}] run advancement revoke @a[advancements={wancomatter:using_item/scythe=true}] only wancomatter:using_item/scythe
execute if entity @a[limit=1,advancements={wancomatter:skills/107spear_skill=true}] run advancement revoke @a[advancements={wancomatter:skills/107spear_skill=true}] only wancomatter:skills/107spear_skill
execute if entity @a[limit=1,advancements={wancomatter:skills/wind_arrow=true}] run advancement revoke @a[advancements={wancomatter:skills/wind_arrow=true}] only wancomatter:skills/wind_arrow
execute if entity @a[limit=1,advancements={wancomatter:skills/poison_needle=true}] run advancement revoke @a[advancements={wancomatter:skills/poison_needle=true}] only wancomatter:skills/poison_needle
execute if entity @a[limit=1,advancements={wancomatter:skills/blue_fire_arrow=true}] run advancement revoke @a[advancements={wancomatter:skills/blue_fire_arrow=true}] only wancomatter:skills/blue_fire_arrow
execute if entity @a[limit=1,advancements={wancomatter:skills/blood_dagger=true}] run advancement revoke @a[advancements={wancomatter:skills/blood_dagger=true}] only wancomatter:skills/blood_dagger
execute if entity @a[limit=1,advancements={wancomatter:skills/spear=true}] run advancement revoke @a[advancements={wancomatter:skills/spear=true}] only wancomatter:skills/spear
execute if entity @a[limit=1,advancements={wancomatter:general/melee-taken=true}] run advancement revoke @a[advancements={wancomatter:general/melee-taken=true}] only wancomatter:general/melee-taken
execute if entity @a[limit=1,advancements={wancomatter:general/dealt=true}] run advancement revoke @a[advancements={wancomatter:general/dealt=true}] only wancomatter:general/dealt
execute if entity @a[limit=1,advancements={wancomatter:general/any-dealt=true}] run advancement revoke @a[advancements={wancomatter:general/any-dealt=true}] only wancomatter:general/any-dealt
execute if entity @a[limit=1,advancements={wancomatter:general/deflect-arrow=true}] run advancement revoke @a[advancements={wancomatter:general/deflect-arrow=true}] only wancomatter:general/deflect-arrow
execute if entity @a[limit=1,advancements={wancomatter:general/arrow-dealt=true}] run advancement revoke @a[advancements={wancomatter:general/arrow-dealt=true}] only wancomatter:general/arrow-dealt
execute if entity @a[limit=1,advancements={wancomatter:general/arrow-dealt2=true}] run advancement revoke @a[advancements={wancomatter:general/arrow-dealt2=true}] only wancomatter:general/arrow-dealt2
execute if entity @a[limit=1,advancements={wancomatter:general/neptune=true}] run advancement revoke @a[advancements={wancomatter:general/neptune=true}] only wancomatter:general/neptune
execute if entity @a[limit=1,advancements={wancomatter:general/magic-crossbow=true}] run advancement revoke @a[advancements={wancomatter:general/magic-crossbow=true}] only wancomatter:general/magic-crossbow
execute if entity @a[limit=1,advancements={wancomatter:general/armor_resistable=true}] run advancement revoke @a[advancements={wancomatter:general/armor_resistable=true}] only wancomatter:general/armor_resistable
execute if entity @a[limit=1,advancements={wancomatter:general/ehp_fire=true}] run advancement revoke @a[advancements={wancomatter:general/ehp_fire=true}] only wancomatter:general/ehp_fire
execute if entity @a[limit=1,advancements={wancomatter:general/ehp_explosion=true}] run advancement revoke @a[advancements={wancomatter:general/ehp_explosion=true}] only wancomatter:general/ehp_explosion
execute if entity @a[limit=1,advancements={wancomatter:general/ehp_projectile=true}] run advancement revoke @a[advancements={wancomatter:general/ehp_projectile=true}] only wancomatter:general/ehp_projectile
execute if entity @a[limit=1,advancements={wancomatter:general/ehp_lightning=true}] run advancement revoke @a[advancements={wancomatter:general/ehp_lightning=true}] only wancomatter:general/ehp_lightning
execute if entity @a[limit=1,advancements={wancomatter:general/ehp_bypasses_armor=true}] run advancement revoke @a[advancements={wancomatter:general/ehp_bypasses_armor=true}] only wancomatter:general/ehp_bypasses_armor
execute if entity @a[limit=1,advancements={wancomatter:general/hinoki_blade=true}] run advancement revoke @a[advancements={wancomatter:general/hinoki_blade=true}] only wancomatter:general/hinoki_blade
execute if entity @a[tag=ehp2,limit=1] run tag @a[tag=ehp2] remove ehp2
execute if entity @a[scores={fall=1..},limit=1] run scoreboard players reset @a[scores={fall=1..}] fall
execute if entity @a[scores={jump=1..},limit=1] run scoreboard players reset @a[scores={jump=1..}] jump
execute if entity @a[scores={sneak=1..},limit=1] run scoreboard players reset @a[scores={sneak=1..}] sneak
execute if entity @a[scores={aviate=1..},limit=1] run scoreboard players reset @a[scores={aviate=1..}] aviate
execute if entity @a[scores={dummy=-1024..},limit=1] run scoreboard players reset @a[scores={dummy=-1024..}] dummy
execute if entity @e[scores={hurtByNumber=-2147483648..},limit=1] run scoreboard players reset @e[scores={hurtByNumber=-2147483648..},tag=!reserveHurtBy] hurtByNumber
execute if entity @a[tag=scythe_attacked,limit=1] run tag @a[tag=scythe_attacked] remove scythe_attacked
execute if entity @e[tag=reserveHurtBy,limit=1] run tag @e[tag=reserveHurtBy] remove reserveHurtBy
execute if entity @a[limit=1,tag=255jumpboost] as @a[tag=255jumpboost] store result score @s dummy run data get entity @s Motion[1] 0.1
execute if entity @a[limit=1,tag=255jumpboost] as @a[tag=255jumpboost,scores={dummy=2..}] run tp @s @s 
execute if entity @a[limit=1,tag=255jumpboost] as @a[tag=255jumpboost] unless data entity @s {ActiveEffects:[{id:8,Amplifier:255}]} run tag @s remove 255jumpboost
effect give @a[tag=!noResistanfce] minecraft:resistance 1000000 4 true
execute if entity @a[tag=noResistanfce,limit=1] run tag @a[tag=noResistanfce] remove noResistanfce
execute if entity @e[type=item,nbt={Item:{tag:{Ungetable:1b}}},limit=1] as @e[type=item,nbt={Item:{tag:{Ungetable:1b}}}] run kill @s

execute if entity @e[nbt={ActiveEffects:[{Id:5}]},limit=1] as @e[nbt={ActiveEffects:[{Id:5}]}] if data entity @s Attributes[{Modifiers:[{UUID:[I; 1686990948, 1784696665, -1967209790, 980277161]}]}] run function wancomatter:general/effect/strengtheffection
execute if entity @e[nbt={ActiveEffects:[{Id:18}]},limit=1] as @e[nbt={ActiveEffects:[{Id:18}]}] if data entity @s Attributes[{Modifiers:[{UUID:[I; 577059721, 292440540, -1687447183, 1218141157]}]}] run function wancomatter:general/effect/weaknesseffection
execute if entity @e[tag=strengthEffect,limit=1] as @e[tag=strengthEffect] unless data entity @s ActiveEffects[{Id:5}] run function project-c:general/effect/strengthclear
execute if entity @e[tag=weaknessEffect,limit=1] as @e[tag=weaknessEffect] unless data entity @s ActiveEffects[{Id:18}] run function project-c:general/effect/weaknessclear

execute if entity @a[limit=1,advancements={mob_manager:entity_finder/check_attacked_entity=true}] run advancement revoke @a[advancements={mob_manager:entity_finder/check_attacked_entity=true}] only mob_manager:entity_finder/check_attacked_entity
execute if entity @a[limit=1,advancements={mob_manager:entity_finder/check_attacked_entity=true}] run advancement revoke @a[advancements={mob_manager:entity_finder/check_attacked_entity=true}] only mob_manager:entity_finder/check_attacked_entity