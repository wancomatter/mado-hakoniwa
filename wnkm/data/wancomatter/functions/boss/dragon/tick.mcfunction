# 使用objective
# counter(攻撃パターン制御に使用)
# subcounter(攻撃パターン制御の補助に使用)
# subcounter2(攻撃パターン制御の補助に使用)
# Mana(第二形態移行HP保存に使用)
# sneak(形態番号保存に使用)
# aviate (飛行速度を保持・0.1単位)
# jump (通常飛行の持続時間)

execute store result bossbar minecraft:dragon1 value run scoreboard players get @s HP

scoreboard players operation #dragonBoss playerNumber = @s playerNumber
scoreboard players operation #dragonBoss teamNumber = @s teamNumber
execute as @e[tag=boss_dragon_parts] if score @s ownerNumber = #dragonBoss playerNumber run tag @s add dragon_match_ownerNumber

# 本体の移動
scoreboard players add @s SelectItemSlot1 1
execute if score @s SelectItemSlot1 matches 1 run function wancomatter:boss/dragon/fly/taikuu/1
execute if score @s SelectItemSlot1 matches 4..16 run function wancomatter:boss/dragon/fly/taikuu/2
execute if score @s SelectItemSlot1 matches 18 run function wancomatter:boss/dragon/fly/taikuu/3
execute if score @s SelectItemSlot1 matches 23 run function wancomatter:boss/dragon/fly/taikuu/4
execute if score @s SelectItemSlot1 matches 26..31 run function wancomatter:boss/dragon/fly/taikuu/5
execute if score @s SelectItemSlot1 matches 32..41 run function wancomatter:boss/dragon/fly/taikuu/6
execute if score @s SelectItemSlot1 matches 42.. run scoreboard players set @s SelectItemSlot1 0

# 飛行制御
execute unless score @s[tag=!NoRandomFly] page matches 1.. run function wancomatter:boss/dragon/fly/random_set
execute unless score @s pageChange matches 0 run function wancomatter:boss/dragon/fly/tick_rotate
execute if score @s page matches 1.. run function wancomatter:boss/dragon/fly/tick_pos

#Cooldown3_max～: 
execute if entity @s[scores={Cooldown3_max=1..}] run function wancomatter:boss/dragon/skill3/1

# スキル
execute if entity @s[tag=dragon_boss.heal_rain] run function wancomatter:boss/dragon/heal_rain/1

# 見た目のRotation[1]を合わせる
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute store result score #dragonBoss Cooldown1 run data get entity @s Rotation[1] 100
# 体のパーツを現在座標に同期
tag @s add this
execute at @s as @e[tag=dragon_match_ownerNumber,tag=dragon1_stand] run function wancomatter:boss/dragon/pos_parts
execute at @s as @e[tag=dragon_match_ownerNumber,tag=boss_hitbox] run function wancomatter:boss/dragon/pos_hitbox
tag @s remove this

#execute at @s run tp @s ^ ^ ^0.5 ~3 ~

execute if entity @s[tag=usedskill] run tag @s remove usedskill
execute if entity @s[scores={Cooldown1=1..}] run scoreboard players remove @s Cooldown1 1
execute if entity @s[scores={Cooldown2=1..}] run scoreboard players remove @s Cooldown2 1
execute if entity @s[scores={Cooldown3=1..}] run scoreboard players remove @s Cooldown3 1
execute if entity @s[scores={Cooldown4=1..}] run scoreboard players remove @s Cooldown4 1
execute if entity @s[scores={Cooldown5=1..}] run scoreboard players remove @s Cooldown5 1
execute if entity @s[scores={Cooldown8=1..}] run scoreboard players remove @s Cooldown8 1
execute if entity @s[scores={Cooldown9=1..}] run scoreboard players remove @s Cooldown9 1
tag @e[tag=dragon_match_ownerNumber] remove dragon_match_ownerNumber

# 形態毎の行動パターン
execute if score @s maxMana matches 1 run function wancomatter:boss/dragon/phase/1
execute if score @s maxMana matches 2 run function wancomatter:boss/dragon/phase/2
execute if score @s maxMana matches 3 run function wancomatter:boss/dragon/phase/3

# 死亡判定
execute if score @s HP matches ..0 run function wancomatter:boss/dragon/defeat

# 形態変化判定
execute if score @s maxMana matches 1 if score @s HP <= @s Mana run function wancomatter:boss/dragon/phase/1_next
execute if score @s maxMana matches 2 if score @s HP <= @s Mana run function wancomatter:boss/dragon/phase/2_next
