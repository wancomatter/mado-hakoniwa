execute positioned 0.0 0.0 0.0 rotated 0 ~ run summon armor_stand ^ ^ ^1 {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b}

execute store result score #dummy counter run data get entity @s Rotation[1] 10000
execute if score @s sneak matches 1.. run scoreboard players operation #dummy dummy /= #2 counter
execute if entity @s[scores={bless1=27}] run scoreboard players add #dummy bless1 1
execute if entity @s[scores={bless2=27}] run scoreboard players add #dummy bless1 1
execute if entity @s[scores={bless3=27}] run scoreboard players add #dummy bless1 1
execute if entity @s[scores={bless4=27}] run scoreboard players add #dummy bless1 1
execute if score #dummy bless1 matches 1.. run scoreboard players operation #dummy dummy /= #2 counter
execute store result score #dummy subcounter run data get entity @e[tag=this,limit=1] Pos[2] 100
execute if score #dummy subcounter matches ..-1 run scoreboard players operation #dummy subcounter *= #-1 counter
scoreboard players operation #dummy subcounter *= #dummy dummy
scoreboard players operation #dummy counter += #dummy subcounter
scoreboard players operation @s recoilY = #dummy subcounter
scoreboard players set @s recoilTime 2
execute as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ ~
#dummy subcounter2を設定する事で水平面のリコイル,追加で#- counterを設定する事で水平面ランダムリコイル
execute if score #dummy subcounter2 matches 1.. run function wancomatter:skills/recoil-xz
execute store result entity @e[tag=this,limit=1] Rotation[1] float 0.0001 run scoreboard players get #dummy counter
execute rotated as @e[tag=this] run tp @s ~ ~ ~ ~ ~
kill @e[tag=this]
scoreboard players reset #dummy