#1on1の募集用AECについての処理
execute if entity @e[tag=1on1_entry,limit=1] as @e[tag=1on1_entry] at @s run function wancomatter:game/1on1/entry_tick
#1on1の試合用アマスタについての処理
execute if entity @e[tag=1on1_stand,limit=1] as @e[tag=1on1_stand] at @s run function wancomatter:game/1on1/game/tick