# コピー中の一時ブロックはプレイ範囲から離れた強制読み込みチャンクに置く。
setblock 1024 0 1024 shulker_box
execute if entity @s[scores={page=9}] run function wancomatter:lobby/0-bless
execute if entity @s[scores={page=19}] run function wancomatter:lobby/0-artifact
execute if entity @s[scores={page=1}] run function wancomatter:lobby/1-meele
execute if entity @s[scores={page=2}] run function wancomatter:lobby/2-bow
execute if entity @s[scores={page=3}] run function wancomatter:lobby/3-armor1
execute if entity @s[scores={page=4}] run function wancomatter:lobby/4-magic1
execute if entity @s[scores={page=5}] run function wancomatter:lobby/5-magic_assist
execute if entity @s[scores={page=6}] run function wancomatter:lobby/6-magic_summon
execute if entity @s[scores={page=7}] run function wancomatter:lobby/7-foods
execute if entity @s[scores={page=11}] run function wancomatter:lobby/1-offitem
execute if entity @s[scores={page=12}] run function wancomatter:lobby/2-gun
execute if entity @s[scores={page=13}] run function wancomatter:lobby/3-armor2
execute if entity @s[scores={page=14}] run function wancomatter:lobby/4-magic2
execute if entity @s[scores={page=15}] run function wancomatter:lobby/5-magic_assist2
execute if items block 1024 0 1024 container.* *[custom_data~{Soulbound:1b}] run data modify block 1024 0 1024 Items[{components:{"minecraft:custom_data":{Soulbound:1b}}}].components."minecraft:custom_data".Owner set from entity @s UUID
item replace entity @s enderchest.0 from block 1024 0 1024 container.0
item replace entity @s enderchest.1 from block 1024 0 1024 container.1
item replace entity @s enderchest.2 from block 1024 0 1024 container.2
item replace entity @s enderchest.3 from block 1024 0 1024 container.3
item replace entity @s enderchest.4 from block 1024 0 1024 container.4
item replace entity @s enderchest.5 from block 1024 0 1024 container.5
item replace entity @s enderchest.6 from block 1024 0 1024 container.6
item replace entity @s enderchest.7 from block 1024 0 1024 container.7
item replace entity @s enderchest.8 from block 1024 0 1024 container.8
item replace entity @s enderchest.9 from block 1024 0 1024 container.9
item replace entity @s enderchest.10 from block 1024 0 1024 container.10
item replace entity @s enderchest.11 from block 1024 0 1024 container.11
item replace entity @s enderchest.12 from block 1024 0 1024 container.12
item replace entity @s enderchest.13 from block 1024 0 1024 container.13
item replace entity @s enderchest.14 from block 1024 0 1024 container.14
item replace entity @s enderchest.15 from block 1024 0 1024 container.15
item replace entity @s enderchest.16 from block 1024 0 1024 container.16
item replace entity @s enderchest.17 from block 1024 0 1024 container.17
item replace entity @s enderchest.18 from block 1024 0 1024 container.18
item replace entity @s enderchest.19 from block 1024 0 1024 container.19
item replace entity @s enderchest.20 from block 1024 0 1024 container.20
item replace entity @s enderchest.21 from block 1024 0 1024 container.21
item replace entity @s enderchest.22 from block 1024 0 1024 container.22
item replace entity @s enderchest.23 from block 1024 0 1024 container.23
item replace entity @s enderchest.24 from block 1024 0 1024 container.24
item replace entity @s enderchest.25 from block 1024 0 1024 container.25
item replace entity @s enderchest.26 from block 1024 0 1024 container.26
setblock 1024 0 1024 air
tag @s remove item_show
