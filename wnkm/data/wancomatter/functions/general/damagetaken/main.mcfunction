#> wancomatter:general/damagetaken/main

execute if entity @s[type=!player,tag=mob] if score @s maxHP < @s HP run scoreboard players operation @s HP = @s maxHP
#execute if entity @s[gamemode=!adventure,gamemode=!survival,advancements={wancomatter:general/armor_resistable=true}] run scoreboard players set @s damageTaken 0
execute if entity @s[gamemode=!adventure,gamemode=!survival] run scoreboard players set @s damageTaken 0
execute if entity @s[tag=pysicalDamage,type=player] run advancement grant @s only wancomatter:general/armor_resistable
execute if entity @s[tag=pysicalDamage,type=!player] store result score @s bless1 run attribute @s minecraft:generic.armor get 4
execute if entity @s[tag=pysicalDamage,type=!player] if score @s bless1 matches 81.. run scoreboard players set @s bless1 80
execute if entity @s[tag=pysicalDamage,type=!player] if score @s bless1 matches 1.. run scoreboard players operation @s bless2 = @s damageTaken
execute if entity @s[tag=pysicalDamage,type=!player] if score @s bless1 matches 1.. run scoreboard players operation @s bless2 *= @s bless1
execute if entity @s[tag=pysicalDamage,type=!player] if score @s bless1 matches 1.. run scoreboard players operation @s bless2 /= #100 counter
execute if entity @s[tag=pysicalDamage,type=!player] if score @s bless1 matches 1.. run scoreboard players operation @s damageTaken -= @s bless2
execute if entity @s[tag=boss] as @a[tag=hurtBy,limit=1] unless score @s BossHurtTime matches 1.. run scoreboard players set @s BossHurtTime 10
execute if entity @s[tag=boss] if entity @a[tag=hurtBy,limit=1,scores={BossHurtTime=10}] run tag @s add multiDamage

scoreboard players set #-- dummy 0
execute if data entity @s ActiveEffects[{Id:25,Amplifier:0b}] run function wancomatter:general/damagetaken/check_levitation

#execute if data entity @s {ActiveEffects:[{Id:32,Amplifier:127b}]} run tellraw wnkm {"score":{"name":"@s","objective":"damageTaken"}}
execute if data entity @s {ActiveEffects:[{Id:32,Amplifier:127b}]} run scoreboard players set @s damageTaken 0
execute if data entity @s {ActiveEffects:[{Id:32,Amplifier:127b}]} run scoreboard players reset @s hurtByNumber
execute if data entity @s {ActiveEffects:[{Id:32,Amplifier:127b}]} run effect clear @s minecraft:hero_of_the_village

#execute unless entity @s[scores={hurtByNumber=-2147483648..}] run function wancomatter:general/damagetaken/set_hurtby
execute if entity @s[scores={hurtByNumber=-2147483648..}] run tag @s add hurt
execute if entity @s[scores={hurtByNumber=-2147483648..}] as @e[scores={playerNumber=-2147483648..}] if score @s playerNumber = @e[tag=hurt,limit=1] hurtByNumber run tag @s add hurtBy
execute if entity @a[tag=hurtBy,limit=1] if entity @s[type=player,tag=hurt] unless score @s teamNumber = @e[tag=hurtBy,limit=1] teamNumber run tag @s remove hurtBy
execute if entity @e[tag=hurtBy,limit=1] run scoreboard players set @s hurtByTime 1
execute if entity @e[tag=hurtBy,limit=1] run scoreboard players operation @s lastHurtByNumber = @e[tag=hurtBy,limit=1] playerNumber
#execute if score @s hurtByNumber matches ..-1 run scoreboard players operation @s lastHurtByNumber = @s hurtByNumber
#execute if score @s hurtByNumber matches ..-1 run scoreboard players set @s hurtByTime 1
##################################################
# tag: hurt   -> 被攻撃エンティティ(実行者)
# tag: hurtBy -> 与攻撃エンティティ(プレイヤー限定)
##################################################


#特殊エンティティに関する処理
#ポータル
execute if entity @s[tag=portal_hitbox] run function wancomatter:general/damagetaken/check_portal

#物魔混合ダメージの処理
execute if entity @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/magic-crossbow=true},limit=1] run function wancomatter:skills/crossbow/03/damage
#飛来槍
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/107spear_skill=true},limit=1] run advancement revoke @a[tag=hurtBy,advancements={wancomatter:skills/107spear_skill=true}] only wancomatter:general/arrow-dealt2
#毒針
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/poison_needle=true},limit=1] run function wancomatter:skills/085/hit
#風吹矢
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/wind_arrow=true},limit=1] run tag @s add magicDamage
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/wind_arrow=true},limit=1] run scoreboard players set @s damageTaken 80
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/wind_arrow=true},limit=1] run scoreboard players set @s hurtWeaponNumber 55
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/wind_arrow=true},limit=1] run advancement revoke @a[tag=hurtBy,advancements={wancomatter:skills/wind_arrow=true}] only wancomatter:general/any-dealt
#蒼炎魔石
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/blue_fire_arrow=true},limit=1] run tag @s add trueDamage
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/blue_fire_arrow=true},limit=1] run scoreboard players set @s hurtWeaponNumber 82
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/blue_fire_arrow=true},limit=1] run advancement revoke @a[tag=hurtBy,advancements={wancomatter:skills/blue_fire_arrow=true}] only wancomatter:general/any-dealt
#血塗られたダガー
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/blood_dagger=true},limit=1] run scoreboard players remove @s damageTaken 15
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/blood_dagger=true},limit=1] run scoreboard players set @s hurtWeaponNumber 106
#無骨槍
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/spear=true},limit=1] run scoreboard players remove @s damageTaken 10
execute if entity @a[tag=hurtBy,advancements={wancomatter:skills/spear=true},limit=1] run scoreboard players set @s hurtWeaponNumber 107
#ネプチューン命中処理
execute if entity @a[tag=hurtBy,advancements={wancomatter:general/neptune=true},limit=1] run effect give @s minecraft:slowness 2 1
execute if entity @a[tag=hurtBy,advancements={wancomatter:general/neptune=true},limit=1] run scoreboard players set @s hurtWeaponNumber 101

#リコールショット処理(使用:エフェクトID:9(nausea),Amplifier:補充矢識別番号)
execute if data entity @s {ActiveEffects:[{Id:9}]} run function wancomatter:skills/arrow-recall

#天壌無窮戦で近接ダメージ4倍
execute if entity @s[tag=dragon1_hitbox] if entity @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] run scoreboard players operation @s damageTaken *= #4 counter
#基礎ダメージを保持
scoreboard players operation #BaseDamage damageTaken = @s damageTaken

#攻撃力上昇と弱体化によるダメージ増減処理
execute if entity @e[tag=hurtBy,limit=1,predicate=wancomatter:effect/strength] if score @s damageTaken matches 1.. run function wancomatter:general/damagetaken/strength
execute if entity @e[tag=hurtBy,limit=1,predicate=wancomatter:effect/weakness] if score @s damageTaken matches 1.. run function wancomatter:general/damagetaken/weakness
#天の印章によるダメージ増加処理
execute if entity @e[tag=hurtBy,limit=1,predicate=wancomatter:effect/bad_omen] if score @s damageTaken matches 1.. run function wancomatter:general/damagetaken/avaritis
#加護によるダメージ増加処理
scoreboard players operation #statDamageBoost dummy = @e[tag=hurtBy,scores={statDamageBoost=1..}] statDamageBoost
execute if entity @a[tag=hurtBy,scores={blessNo23=1..},limit=1] run function wancomatter:general/bless/combo
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=magicDamage] as @a[tag=hurtBy] if entity @s[scores={bless1=12}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=magicDamage] as @a[tag=hurtBy] if entity @s[scores={bless2=12}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=magicDamage] as @a[tag=hurtBy] if entity @s[scores={bless3=12}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=magicDamage] as @a[tag=hurtBy] if entity @s[scores={bless4=12}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players add #statDamageBoost dummy 15
execute if score #bless counter matches 2.. run scoreboard players add #statDamageBoost dummy 15
scoreboard players reset #bless counter
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless1=10}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless2=10}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless3=10}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless4=10}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players add #statDamageBoost dummy 15
execute if score #bless counter matches 2.. run scoreboard players add #statDamageBoost dummy 15
scoreboard players reset #bless counter
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] if entity @a[tag=hurtBy,advancements={wancomatter:general/arrow-dealt=true,wancomatter:general/arrow-dealt2=false},limit=1] run tag @s add flag
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=pysicalDamage] if entity @a[tag=hurtBy,limit=1] run tag @s add flag
execute if entity @s[tag=flag] as @a[tag=hurtBy] if entity @s[scores={bless1=24}] run scoreboard players add #bless counter 1
execute if entity @s[tag=flag] as @a[tag=hurtBy] if entity @s[scores={bless2=24}] run scoreboard players add #bless counter 1
execute if entity @s[tag=flag] as @a[tag=hurtBy] if entity @s[scores={bless3=24}] run scoreboard players add #bless counter 1
execute if entity @s[tag=flag] as @a[tag=hurtBy] if entity @s[scores={bless4=24}] run scoreboard players add #bless counter 1
execute if entity @s[tag=flag] run tag @s remove flag
execute if score #bless counter matches 1.. run scoreboard players add #statDamageBoost dummy 15
execute if score #bless counter matches 2.. run scoreboard players add #statDamageBoost dummy 15
scoreboard players reset #bless counter

#特殊ダメージ増強アイテムの処理
execute if entity @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},scores={holdItem=106},limit=1] if entity @s[tag=!pysicalDamage,tag=!magicDamage] as @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},scores={holdItem=106}] at @s run function wancomatter:skills/106/backstab-judge
execute if entity @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/any-dealt=true},scores={holdItem=96..99},limit=1] as @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/any-dealt=true},scores={holdItem=96..99}] run scoreboard players remove @s Mana 1
execute if entity @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/any-dealt=true},scores={holdItem=097},limit=1] at @s run function wancomatter:skills/096/ice-aspect
execute if entity @s[tag=hurt,tag=magicDamage] as @a[tag=!hurt,tag=hurtBy,scores={magicBoost=1..},limit=1] run function wancomatter:general/damagetaken/magic-boost

#ダメージブースト系処理
execute if entity @s[scores={hurtByNumber=-2147483648..}] if score #statDamageBoost dummy matches 1.. run scoreboard players operation #BaseDamage counter = #BaseDamage damageTaken
execute if entity @s[scores={hurtByNumber=-2147483648..}] if score #statDamageBoost dummy matches 1.. run scoreboard players operation #BaseDamage counter *= #statDamageBoost dummy
execute if entity @s[scores={hurtByNumber=-2147483648..}] if score #statDamageBoost dummy matches 1.. run scoreboard players operation #BaseDamage counter /= #100 counter
execute if entity @s[scores={hurtByNumber=-2147483648..}] if score #statDamageBoost dummy matches 1.. run scoreboard players operation #BaseDamage counter -= #BaseDamage damageTaken
execute if entity @s[scores={hurtByNumber=-2147483648..}] if score #statDamageBoost dummy matches 1.. run scoreboard players operation @s damageTaken += #BaseDamage counter
scoreboard players reset #statDamageBoost
#execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @a[tag=hurtBy,scores={damageBoost=1..},limit=1] as @a[tag=hurtBy,scores={damageBoost=1..}] run scoreboard players add @s damageBoost 100
#execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @a[tag=hurtBy,scores={damageBoost=..-100},limit=1] as @a[tag=hurtBy,scores={damageBoost=..-100}] run scoreboard players set @s damageBoost -99
#execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @a[tag=hurtBy,scores={damageBoost=..-1},limit=1] as @a[tag=hurtBy,scores={damageBoost=..-1}] run scoreboard players add @s damageBoost 100
execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @e[tag=hurtBy,scores={damageBoost=1..},limit=1] run scoreboard players operation #BaseDamage counter = #BaseDamage damageTaken
execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @e[tag=hurtBy,scores={damageBoost=1..},limit=1] run scoreboard players operation #BaseDamage counter *= @a[tag=hurtBy,scores={damageBoost=1..},limit=1] damageBoost
execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @e[tag=hurtBy,scores={damageBoost=1..},limit=1] run scoreboard players operation #BaseDamage counter /= #100 counter
execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @e[tag=hurtBy,scores={damageBoost=1..},limit=1] run scoreboard players operation @s damageTaken += #BaseDamage counter
execute if entity @s[scores={hurtByNumber=-2147483648..}] if entity @e[tag=hurtBy,scores={damageBoost=1..},limit=1] as @a[tag=hurtBy,scores={damageBoost=1..}] run scoreboard players reset @s damageBoost

#execute if entity @s[tag=magicDamage] store result score #-- dummy run data get entity @s HurtTime 1
#execute if entity @s[tag=trueDamage,tag=!magicDamage] store result score #-- dummy run data get entity @s HurtTime 1
#execute if entity @s[tag=pysicalDamage,tag=!magicDamage] store result score #-- dummy run data get entity @s HurtTime 1
#execute if entity @s[tag=magicDamage2,tag=!multiDamage] run scoreboard players set @s damageTaken 0
#execute if entity @s[tag=magicDamage2] run tag @s remove magicDamage2
#execute if score #-- dummy matches 0..1 run tag @s add magicDamage2

#execute if entity @s[tag=magicDamage2] store result score #-- dummy run data get entity @s HurtTime 1
#execute if entity @s[tag=magicDamage2,type=!player] if score #-- dummy matches 0..1 run effect give @s minecraft:resistance 1 4 true
#execute if entity @s[tag=magicDamage2,type=!player] if score #-- dummy matches 0..1 run tag @s add mob-mDamage
#execute if entity @s[tag=magicDamage2,tag=!noKnockbackDamage] if entity @e[tag=hurtBy,tag=!hurt,limit=1] run tag @s add flag
#execute if entity @s[tag=magicDamage2] unless entity @s[tag=flag] unless entity @s[tag=undead] if score #-- dummy matches 0..1 run effect give @s minecraft:instant_damage 1 0 true
#execute if entity @s[tag=magicDamage2] unless entity @s[tag=flag] if entity @s[tag=undead] if score #-- dummy matches 0..1 run effect give @s minecraft:instant_health 1 0 true

execute store result score #-- dummy run data get entity @s HurtTime 1
execute if score #-- dummy matches 0..1 unless entity @s[tag=undead] if score #-- dummy matches 0..1 at @s run summon area_effect_cloud ~ ~0.1 ~ {Duration:5,Age:4,WaitTime:1,Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Effects:[{Id:32,Amplifier:127b,Duration:2},{Id:7,Amplifier:0b,Duration:1}],Tags:["ini","dmg_kb_AEC"]}
execute if score #-- dummy matches 0..1 if entity @s[tag=undead] if score #-- dummy matches 0..1 at @s run summon area_effect_cloud ~ ~0.1 ~ {Duration:5,Age:4,WaitTime:1,Radius:0.5f,Particle:"minecraft:dust 0 0 0 0",Effects:[{Id:32,Amplifier:127b,Duration:2},{Id:6,Amplifier:0b,Duration:1}],Tags:["ini","dmg_kb_AEC"]}
execute if score #-- dummy matches 0..1 run data modify entity @e[tag=ini,limit=1] Owner set from entity @a[tag=hurtBy,limit=1] UUID
execute if score #-- dummy matches 0..1 run tag @e[tag=ini] remove ini
execute if entity @s[tag=noKnockbackDamage] run function wancomatter:operation/instant_kb_resist

#execute if score @s hurtTimeTaken matches 1.. if entity @s[tag=!multiDamage] unless entity @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true},limit=1] run scoreboard players operation @s damageTaken -= @s hurtTimeTaken
execute if score @s hurtTimeTaken matches 1.. if entity @s[tag=!multiDamage] run scoreboard players operation @s damageTaken -= @s hurtTimeTaken

execute if score @s damageTaken matches 2147483647 run scoreboard players set @s damageTaken 0
execute if score @s damageTaken matches -2147483648..-1 run scoreboard players set @s damageTaken 0

scoreboard players operation @s hurtTimeTaken += @s damageTaken
scoreboard players operation #-- counter = @s damageTaken

#山崩しの印用の基礎ダメージ取得
scoreboard players operation #yamakuzushi damageTaken = @s damageTaken
function wancomatter:general/damagetaken/yamakuzushi/check_playernumber

#特殊アイテムによる被ダメージ増加処理
execute if entity @s[tag=eat_bread,advancements={wancomatter:general/ehp_bypasses_armor=false},scores={damageTaken=1..}] if entity @a[tag=hurtBy,limit=1] run function wancomatter:skills/foods/bread/hurt
#特殊防具による被ダメージ増加処理
execute if entity @s[tag=ice_robe] run function wancomatter:general/damagetaken/ice_robe
#加護デメリットによる被ダメージ増加処理
execute if entity @s[scores={bless1=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=13}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1 run scoreboard players operation @s damageTaken *= #3 counter
execute if score #bless counter matches 1 run scoreboard players operation @s damageTaken *= #7 counter
execute if score #bless counter matches 2.. run scoreboard players operation @s damageTaken *= #2 counter
execute if score #bless counter matches 2.. run scoreboard players operation @s damageTaken *= #11 counter
execute if score #bless counter matches 1.. run scoreboard players operation @s damageTaken /= #20 counter
scoreboard players reset #bless counter
#effect:衝撃吸収による被ダメージ軽減処理
execute if entity @s[type=player,nbt={ActiveEffects:[{Id:22}]}] run function wancomatter:general/damagetaken/resist/absorption
#加護メリットによる被ダメージ軽減処理
execute if entity @s[scores={bless1=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=14}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players operation @s damageTaken *= #17 counter
execute if score #bless counter matches 2.. run scoreboard players operation @s damageTaken *= #17 counter
execute if score #bless counter matches 1.. run scoreboard players operation @s damageTaken /= #20 counter
execute if score #bless counter matches 2.. run scoreboard players operation @s damageTaken /= #20 counter
scoreboard players reset #bless counter
#加護によるダメージ軽減処理
execute if entity @s[scores={bless1=1}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=1}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=1}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=1}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. if entity @s[tag=magicDamage] unless entity @s[tag=trueDamage] run scoreboard players operation @s damageTaken *= #3 counter
execute if score #bless counter matches 2.. if entity @s[tag=magicDamage] unless entity @s[tag=trueDamage] run scoreboard players operation @s damageTaken *= #3 counter
execute if score #bless counter matches 1.. if entity @s[tag=magicDamage] unless entity @s[tag=trueDamage] run scoreboard players operation @s damageTaken /= #4 counter
execute if score #bless counter matches 2.. if entity @s[tag=magicDamage] unless entity @s[tag=trueDamage] run scoreboard players operation @s damageTaken /= #4 counter
scoreboard players reset #bless counter
execute if entity @s[scores={bless1=2}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=2}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=2}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=2}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. if entity @s[advancements={wancomatter:general/armor_resistable=true}] run scoreboard players operation @s damageTaken *= #3 counter
execute if score #bless counter matches 2.. if entity @s[advancements={wancomatter:general/armor_resistable=true}] run scoreboard players operation @s damageTaken *= #3 counter
execute if score #bless counter matches 1.. if entity @s[advancements={wancomatter:general/armor_resistable=true}] run scoreboard players operation @s damageTaken /= #4 counter
execute if score #bless counter matches 2.. if entity @s[advancements={wancomatter:general/armor_resistable=true}] run scoreboard players operation @s damageTaken /= #4 counter
scoreboard players reset #bless counter
#instantDMGshieldによるダメージ軽減処理
execute if score @s instantDMGS_time matches 1.. run scoreboard players operation #-- instantDMGshield = @s instantDMGshield
execute if score @s instantDMGS_time matches 1.. run scoreboard players operation #-- instantDMGshield *= #-1 counter
execute if score @s instantDMGS_time matches 1.. run scoreboard players operation #-- instantDMGshield *= @s damageTaken
execute if score @s instantDMGS_time matches 1.. run scoreboard players operation #-- instantDMGshield /= #100 counter
execute if score @s instantDMGS_time matches 1.. run scoreboard players operation @s damageTaken += #-- instantDMGshield

#特殊防具によるダメージ軽減

#防具の物理耐性、魔法耐性の軽減処理
execute if entity @s[advancements={wancomatter:general/armor_resistable=true}] run function wancomatter:general/damagetaken/resist/armor
execute if entity @s[tag=magicDamage] run function wancomatter:general/damagetaken/resist/magic
execute if entity @s[advancements={wancomatter:general/ehp_projectile=true}] if score @s projectileResist matches 1.. run function wancomatter:general/damagetaken/resist/projectile
execute if entity @s[advancements={wancomatter:general/ehp_fire=true}] if score @s fireResist matches 1.. run function wancomatter:general/damagetaken/resist/fire
execute if entity @s[advancements={wancomatter:general/ehp_explosion=true}] if score @s blastResist matches 1.. run function wancomatter:general/damagetaken/resist/explosion
#dmgShieldによるダメージ定数軽減
execute if entity @s[tag=!trueDamage,scores={dmgShield=1..}] run scoreboard players operation @s damageTaken -= @s dmgShield
#dmgProtectionによるダメージ割合軽減
execute if entity @s[tag=!trueDamage,scores={dmgProtection=1..}] run scoreboard players operation @s dummy = @s damageTaken
execute if entity @s[tag=!trueDamage,scores={dmgProtection=1..}] run scoreboard players operation @s dummy *= @s dmgProtection
execute if entity @s[tag=!trueDamage,scores={dmgProtection=1..}] run scoreboard players operation @s dummy /= #100 counter
execute if entity @s[tag=!trueDamage,scores={dmgProtection=1..}] run scoreboard players operation @s damageTaken -= @s dummy

#山崩しの印が付いている時に被ダメージを増加
execute if score #yamakuzushi counter matches 1.. run scoreboard players operation @s damageTaken += #yamakuzushi damageTaken

execute if score @s damageTaken matches -2147483648..-1 run scoreboard players set @s damageTaken 0
execute if score @s damageTaken matches 0 run scoreboard players reset @s hurtByNumber

#固定ダメージ増加
execute if entity @e[tag=hurtBy,predicate=wancomatter:effect/add_damage] run function wancomatter:general/damagetaken/add_damage
#ヒノキの追加ダメージ処理
execute if entity @a[tag=!hurt,tag=hurtBy,advancements={wancomatter:general/hinoki_blade=true},limit=1] run function wancomatter:skills/109/melee
#effect:幸運によるダメージ軽減処理
execute if entity @s[nbt={ActiveEffects:[{Id:26}]}] run function wancomatter:general/damagetaken/resist/luck
#守の彗星バフの削除
execute if entity @s[tag=guard_star_buff] run effect clear @s minecraft:luck
execute if entity @s[tag=guard_star_buff] run tag @s remove guard_star_buff

#加護:幸運体質の処理
execute if entity @s[scores={bless1=15}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=15}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=15}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=15}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run loot spawn 0 0 0 loot wancomatter:random/1-100
execute if score #bless counter matches 1.. store result score #bless subcounter run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-100"}].Amount 10
execute if score #bless counter matches 1.. run kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute if score #bless counter matches 2 if score #bless subcounter matches 125..249 run scoreboard players remove #bless subcounter 125
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter += @s armorResist
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter += @s magicResist
execute if score #bless counter matches 1.. if score #bless subcounter matches 0..124 run scoreboard players set @s damageTaken 1
execute if score #bless counter matches 1.. if score #bless subcounter matches 0..124 anchored eyes run particle minecraft:totem_of_undying ^ ^ ^ 1 1 1 0.5 90 normal @a
execute if score #bless counter matches 1.. if score #bless subcounter matches 0..124 anchored eyes run particle minecraft:totem_of_undying ^ ^ ^ 1 1 1 0.5 15 force @a
execute if score #bless counter matches 1.. if score #bless subcounter matches 0..124 anchored eyes run playsound minecraft:item.totem.use master @a ^ ^ ^ 1.2 2
scoreboard players reset #bless

#加護:触らぬ神に祟りなしの処理
execute if entity @s[scores={bless1=16}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=16}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=16}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=16}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run loot spawn 0 0 0 loot wancomatter:random/1-100
execute if score #bless counter matches 1.. store result score #bless subcounter run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-100"}].Amount 10
execute if score #bless counter matches 1.. run kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute if score #bless counter matches 2 if score #bless subcounter matches 250..499 run scoreboard players set #bless subcounter 0
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 run scoreboard players operation #bless teamNumber = @s teamNumber
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 at @s as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #bless teamNumber run effect give @s minecraft:slowness 3 1
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 at @s anchored eyes run particle minecraft:falling_dust ice ^ ^ ^ 1 1 1 0.5 90 normal @a
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 at @s anchored eyes run particle minecraft:falling_dust ice ^ ^ ^ 1 1 1 0.5 15 force @a
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 at @s anchored eyes run playsound minecraft:block.glass.break master @a ^ ^ ^ 1.2 1.5
execute if score #bless counter matches 1.. if score #bless subcounter matches ..249 at @s anchored eyes run playsound minecraft:block.glass.break master @a ^ ^ ^ 1.2 1.5
scoreboard players reset #bless

#加護:ブラッドグリードの処理
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless1=18}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless2=18}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless3=18}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] if entity @s[scores={bless4=18}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players operation #bless HP = @s damageTaken
execute if score #bless counter matches 2.. run scoreboard players operation #bless HP *= #2 counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless HP *= #4 counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless HP /= #25 counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless HP *= @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] healPower
execute if score #bless counter matches 1.. run scoreboard players operation #bless HP /= #100 counter
execute if score #bless counter matches 1.. run scoreboard players operation @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] HPheal += #bless HP
execute if score #bless counter matches 1.. as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] at @s run particle minecraft:dust 0.6 0 0 1 ~ ~ ~ 1 1 1 1 60 normal @a
execute if score #bless counter matches 1.. as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false},limit=1] at @s run particle minecraft:dust 0.6 0 0 1 ~ ~ ~ 1 0 1 1 10 force @a
scoreboard players reset #bless counter

#毒塗り術用のpysicalDamageにadvancements付与するやつ
execute if entity @s[tag=pysicalDamage] if entity @a[tag=hurtBy,limit=1] run advancement grant @a[tag=hurtBy] only wancomatter:general/any-dealt
#加護:毒塗り術の処理
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true}] if entity @s[scores={bless1=20}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true}] if entity @s[scores={bless2=20}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true}] if entity @s[scores={bless3=20}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!magicDamage,tag=!trueDamage] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true}] if entity @s[scores={bless4=20}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run loot spawn 0 0 0 loot wancomatter:random/1-100
execute if score #bless counter matches 1.. store result score #-- dummy run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-100"}].Amount
execute if score #bless counter matches 1.. run kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute if score #bless counter matches 1 if score #-- dummy matches ..23 run effect give @s minecraft:poison 3 0
execute if score #bless counter matches 2.. if score #-- dummy matches ..23 run effect give @s minecraft:poison 3 1
execute if score #bless counter matches 1.. if score #-- dummy matches ..23 at @s run playsound minecraft:block.slime_block.place master @a[tag=!hurtBy] ~ ~ ~ 1.2 0.5
execute if score #bless counter matches 1.. if score #-- dummy matches ..23 as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true}] at @s run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1.2 0.5
execute if score #bless counter matches 1.. if score #-- dummy matches ..23 at @s run particle minecraft:dust 0.3 0.65 0.3 1 ~ ~1 ~ 1 1 1 1 60 normal @a
execute if score #bless counter matches 1.. if score #-- dummy matches ..23 at @s run particle minecraft:dust 0.3 0.65 0.3 1 ~ ~1 ~ 1 1 1 1 10 force @a
scoreboard players reset #bless counter

#加護:要塞崩しの処理
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!trueDamage] as @a[tag=hurtBy] if entity @s[scores={bless1=26}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!trueDamage] as @a[tag=hurtBy] if entity @s[scores={bless2=26}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!trueDamage] as @a[tag=hurtBy] if entity @s[scores={bless3=26}] run scoreboard players add #bless counter 1
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=!trueDamage] as @a[tag=hurtBy] if entity @s[scores={bless4=26}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. if score @s damageTaken matches 1.. unless score @a[tag=hurtBy,limit=1] yamakuzushiCT matches 1.. run function wancomatter:general/damagetaken/yamakuzushi/add_yamakuzushi
scoreboard players reset #bless counter
execute if score #yamakuzushi counter matches 1.. run scoreboard players reset #yamakuzushi

#吸収の処理(使用:エフェクトID32,Amplifier:吸収する量,プラス:MP,マイナス:HP)
execute if data entity @s {ActiveEffects:[{Id:32}]} run tag @s add drain
execute if entity @s[tag=drain] run scoreboard players set #-- dummy 0
execute if entity @s[tag=drain] store result score #-- dummy run data get entity @s ActiveEffects[{Id:32}].Amplifier
execute if entity @s[tag=drain] if score #-- dummy matches 0.. run tag @s add Manadrain
execute if entity @s[tag=Manadrain] run scoreboard players operation @s Mana -= #-- dummy
execute if entity @s[tag=Manadrain] unless score @s Mana matches 0.. run scoreboard players set @s Mana 0
execute if entity @s[tag=Manadrain] as @a[tag=hurtBy] run scoreboard players operation @s Mana += #-- dummy
execute if entity @s[tag=Manadrain] run tag @s remove Manadrain
#HP吸収の割合:effect give @s minecraft:hero_of_the_village 1 256-(吸収％) true or false(true:魔法処理で加護が働く)
execute if entity @s[tag=drain] unless score #-- dummy matches 0.. run tag @s add Healthdrain
execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy *= #-1 counter
execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy *= @s damageTaken
execute if entity @s[tag=Healthdrain] run scoreboard players operation #-- dummy /= #100 counter
execute if entity @s[tag=Healthdrain] if data entity @s {ActiveEffects:[{Id:32,ShowIcon:0b}]} as @a[tag=hurtBy] run scoreboard players operation #-- dummy *= @s healPower
execute if entity @s[tag=Healthdrain] if data entity @s {ActiveEffects:[{Id:32,ShowIcon:0b}]} as @a[tag=hurtBy] run scoreboard players operation #-- dummy /= #100 counter
execute if entity @s[tag=Healthdrain] as @a[tag=hurtBy] run scoreboard players operation @s HPheal += #-- dummy
execute if entity @s[tag=Healthdrain] run tag @s remove Healthdrain
execute if entity @s[tag=drain] run effect clear @s minecraft:hero_of_the_village
execute if entity @s[tag=drain] run scoreboard players reset #-- dummy
execute if entity @s[tag=drain] run tag @s remove drain

#彫刻刀でシュルカーを確定キル
execute if entity @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true},scores={holdItem=111},limit=1] if entity @s[type=shulker] run scoreboard players set @s damageTaken 99999
#ダメージ表示
execute if entity @s[scores={damageTaken=1..}] at @s run function wancomatter:general/damagetaken/show_damage
#サンドバッグの処理
execute if entity @s[tag=sandBag,scores={damageTaken=1..}] if entity @a[tag=hurtBy,limit=1] at @s run function wancomatter:general/sandbag

#タグ消去
tag @s[tag=trueDamage] remove trueDamage
tag @s[tag=pysicalDamage] remove pysicalDamage
tag @s[tag=multiDamage] remove multiDamage
tag @s[tag=magicDamage] remove magicDamage
tag @s[tag=noKnockbackDamage] remove noKnockbackDamage

#血鎖の判定
execute if entity @s[tag=p.blood_chain] if entity @e[tag=hurtBy,limit=1] at @s run function wancomatter:skills/077/parry
#死返死の判定
execute if entity @s[tag=p.death_counter] if score @s HP <= @s damageTaken at @s run function wancomatter:skills/060/parry_check
#後処理
execute if entity @s[type=player,scores={damageTaken=1..}] run tag @s add damagetrade
execute if entity @s[type=player,scores={damageTaken=1..}] run tag @s add damagetaken
execute if entity @s[scores={damageTaken=1..}] run tag @s add isDamaged
execute if entity @a[tag=hurtBy,limit=1] as @a[tag=hurtBy,advancements={wancomatter:general/any-dealt=true,wancomatter:general/arrow-dealt=false}] run tag @s add damagetrade
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=boss] at @s run function wancomatter:boss/hate
execute if entity @s[scores={hurtByNumber=-2147483648..},tag=boss_hitbox] at @s run function wancomatter:boss/hate_hitbox
execute if score #result total_dealt matches -1 if entity @a[tag=hurtBy,limit=1] if entity @s[type=player] run scoreboard players operation @a[tag=hurtBy,limit=1] total_dealt += @s damageTaken
execute if score #result total_dealt matches -1 if entity @a[tag=hurtBy,limit=1] if entity @s[type=!player] run scoreboard players operation @a[tag=hurtBy,limit=1] total_dealt += @s damageTaken
execute if score #result total_dealt matches -1 if entity @e[tag=hurtBy,tag=boss,limit=1] if entity @s[type=player] run scoreboard players operation #boss_total_dmg total_dealt += @s damageTaken
execute if score #result total_taken matches -1 if entity @s[type=player] run scoreboard players operation @s total_taken += @s damageTaken
execute if entity @s[tag=boss] as @a[tag=hurtBy,limit=1] if score #result total_taken matches -1 run scoreboard players operation #boss_total_dmg total_taken += @s damageTaken
execute if entity @s[tag=hurt] run tag @s remove hurt
execute if entity @e[tag=hurtBy,limit=1] run tag @e[tag=hurtBy] remove hurtBy

scoreboard players operation @s HP -= @s damageTaken
scoreboard players set @s damageTaken 0

scoreboard players reset #--
scoreboard players reset #BaseDamage counter

execute if entity @s[type=!player,tag=summon_entity,scores={HP=..0}] run function wancomatter:skills/killed-summon
execute if entity @s[type=!player,tag=mob,tag=!boss,scores={HP=..0}] at @s run function wancomatter:general/mob-kill
execute if entity @s[scores={HP=..0},tag=!noMob,type=player] run function wancomatter:general/kill-log/get-kill
