scoreboard players operation #bless Mana = @s Mana
execute if entity @s[scores={dummy=1}] unless entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=1}] if entity @s[scores={Mana=5..,CooldownX=..0}] run function wancomatter:skills/arrow/01
execute if entity @s[scores={dummy=2}] unless entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=2}] if entity @s[scores={Mana=7..,CooldownX=..0}] run function wancomatter:skills/arrow/02
execute if entity @s[scores={dummy=3}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=3}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/arrow/03
execute if entity @s[scores={dummy=4}] unless entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=4}] if entity @s[scores={Mana=10..,CooldownX=..0}] run function wancomatter:skills/arrow/04
execute if entity @s[scores={dummy=5}] unless entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=5}] if entity @s[scores={Mana=15..,CooldownX=..0}] run function wancomatter:skills/arrow/05
execute if entity @s[scores={dummy=6..7}] unless entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=6}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/arrow/06
execute if entity @s[scores={dummy=7}] if entity @s[scores={Mana=8..,CooldownX=..0}] run function wancomatter:skills/arrow/07
execute if entity @s[scores={dummy=8}] unless entity @s[scores={Mana=13..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=8}] if entity @s[scores={Mana=13..,CooldownX=..0}] run function wancomatter:skills/arrow/08
execute if entity @s[scores={dummy=9}] unless entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/fail
execute if entity @s[scores={dummy=9}] if entity @s[scores={Mana=11..,CooldownX=..0}] run function wancomatter:skills/arrow/09

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[{Slot:0b}].Count set value 64b
loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
setblock 0 0 0 air

execute if entity @s[scores={dummy=1..9}] unless entity @s[tag=failed] run function wancomatter:skills/cooldown_set
