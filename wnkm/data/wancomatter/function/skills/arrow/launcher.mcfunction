scoreboard players operation #bless Mana = @s Mana
execute if entity @s[scores={dummy=1}] unless entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=1}] if entity @s[scores={Mana=0..,CooldownX=..0}] run function wancomatter:skills/arrow/01
execute if entity @s[scores={dummy=2}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=2}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/arrow/02
execute if entity @s[scores={dummy=3}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=3}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/arrow/03
execute if entity @s[scores={dummy=4}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=4}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/arrow/04
execute if entity @s[scores={dummy=5}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=5}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/arrow/05
execute if entity @s[scores={dummy=6..7}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=6}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/arrow/06
execute if entity @s[scores={dummy=7}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/arrow/07
execute if entity @s[scores={dummy=8}] unless entity @s[scores={Mana=13..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=8}] if entity @s[scores={Mana=13..,CooldownX=..0}] run function wancomatter:skills/arrow/08
execute if entity @s[scores={dummy=9}] unless entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=9}] if entity @s[scores={Mana=20..,CooldownX=..0}] run function wancomatter:skills/arrow/09

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[{Slot:0b}].count set value 64b
item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
setblock 1024 0 1024 air

execute if entity @s[scores={dummy=1..9}] unless entity @s[tag=failed] run function wancomatter:skills/cooldown_set
