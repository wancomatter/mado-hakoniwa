#HPD2に(10*maxHP)を代入
execute as @a[tag=hpd] run scoreboard players operation @s HPdisplay2 = @s maxHP
execute as @a[tag=hpd] run scoreboard players operation @s HPdisplay2 *= #10 counter
#HPD2がHPを上回る場合はoverHPタグを付与し、HPにHPD2を代入
execute as @a[tag=hpd] if score @s HPdisplay2 < @s HP run scoreboard players operation @s HP = @s HPdisplay2
#HPD1に(2*HP)を代入し、maxHPで割ってx/20の精度で割合を出す
execute as @a[tag=hpd] run scoreboard players operation @s HPdisplay1 = @s HP
execute as @a[tag=hpd] run scoreboard players operation @s HPdisplay1 *= #counter2 counter
execute as @a[tag=hpd] run scoreboard players remove @s HPdisplay1 1
execute as @a[tag=hpd] run scoreboard players operation @s HPdisplay1 /= @s maxHP
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..19 run scoreboard players add @s HPdisplay1 1
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..0 run scoreboard players set @s HPdisplay1 1
#HPの値を取得
execute as @a[tag=hpd] store result score @s getHealth run data get entity @s Health 1
#Health<HPD1の時、regenerationを付与
execute as @a[tag=hpd] if score @s getHealth < @s HPdisplay1 run effect give @s minecraft:regeneration 1 10 true
execute as @a[tag=hpd] if score @s getHealth < @s HPdisplay1 run scoreboard players operation @s HPregene = @s HPdisplay1
execute as @a[tag=hpd] if score @s getHealth < @s HPdisplay1 run scoreboard players operation @s HPregene -= @s getHealth
#Health>HPD1の時、HPD1を20で引いてHealthのマイナスする値を算出 if score @s Health > @s HPdisplay1 
execute as @a[tag=hpd] if score @s getHealth > @s HPdisplay1 run scoreboard players remove @s HPdisplay1 20
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-16 run attribute @s minecraft:generic.max_health modifier add 53594-7591-0-16-535947591 "health_set" -16 add
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-16 run scoreboard players add @s HPdisplay1 16
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-08 run attribute @s minecraft:generic.max_health modifier add 53594-7591-0-08-535947591 "health_set" -8 add
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-08 run scoreboard players add @s HPdisplay1 08
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-04 run attribute @s minecraft:generic.max_health modifier add 53594-7591-0-04-535947591 "health_set" -4 add
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-04 run scoreboard players add @s HPdisplay1 04
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-02 run attribute @s minecraft:generic.max_health modifier add 53594-7591-0-02-535947591 "health_set" -2 add
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-02 run scoreboard players add @s HPdisplay1 02
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-01 run attribute @s minecraft:generic.max_health modifier add 53594-7591-0-01-535947591 "health_set" -1 add
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..-01 run scoreboard players add @s HPdisplay1 01
execute as @a[tag=hpd] if score @s HPdisplay1 matches ..0 run tag @s add hpd2
tag @a[tag=hpd] remove hpd