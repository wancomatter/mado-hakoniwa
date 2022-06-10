execute if entity @s[nbt={Inventory:[{tag:{Ungetable:1b}}]}] run clear @s #wancomatter:ungetable{Ungetable:1b}
execute if entity @s[scores={egg_skeleton=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_blaze=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_stray=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_cave_spider=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_witch=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_creeper=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_magma_cube=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_pufferfish=1..}] run function wancomatter:skills/arrow/general
execute if entity @s[scores={egg_drowned=1..}] run function wancomatter:skills/arrow/general
execute if data entity @s {Inventory:[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:0b,Charged:1b}}]} run function wancomatter:skills/crossbow/05/charge
execute if data entity @s {Inventory:[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:1b,Charged:0b}}]} run function wancomatter:skills/crossbow/05/recharge
execute if data entity @s {Inventory:[{id:"minecraft:crossbow",tag:{bowgun:1b,bowgunCharged:2b,Charged:0b}}]} run function wancomatter:skills/crossbow/05/end

#黒の盾検知
execute if entity @s[tag=offBlackShield] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{BlackShield:1b}}]} at @s run function wancomatter:skills/blackshield/leave
execute if entity @s[tag=!offBlackShield] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{BlackShield:1b}}]} at @s run function wancomatter:skills/blackshield/set
#騎士の盾検知
execute if entity @s[tag=offKnightShield] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{KnightShield:1b}}]} at @s run function wancomatter:skills/knightshield/leave
execute if entity @s[tag=!offKnightShield] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{KnightShield:1b}}]} at @s run function wancomatter:skills/knightshield/set
#拡張矢筒検知
execute if entity @s[tag=extend_quiver] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{quiver:1b}}]} run tag @s remove extend_quiver
execute if entity @s[tag=!extend_quiver] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:golden_hoe",tag:{quiver:1b}}]} run tag @s add extend_quiver
#拡張マガジン検知
execute if entity @s[tag=extend_magazine1] unless data entity @s {Inventory:[{Slot:-106b,id:"minecraft:mojang_banner_pattern",tag:{magazine:1b}}]} run tag @s remove extend_magazine1
execute if entity @s[tag=!extend_magazine1] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:mojang_banner_pattern",tag:{magazine:1b}}]} run tag @s add extend_magazine1
#ダークリパルサーを持っている場合タグ付与
execute if entity @s[tag=hasDarkRequlser] unless data entity @s {Inventory:[{tag:{darkRepulser:1b}}]} run tag @s remove hasDarkRequlser
execute if entity @s[tag=!hasDarkRequlser] if data entity @s {Inventory:[{tag:{darkRepulser:1b}}]} run tag @s add hasDarkRequlser
execute if entity @s[tag=hasDarkRequlser] run scoreboard players set @s SelectItemSlot1 -1
#スロウアックスを持っている場合タグ付与
execute if entity @s[tag=hasThrowAxe] unless data entity @s {Inventory:[{tag:{throwAxe:1b}}]} run tag @s remove hasThrowAxe
execute if entity @s[tag=!hasThrowAxe] if data entity @s {Inventory:[{tag:{throwAxe:1b}}]} run tag @s add hasThrowAxe
execute if entity @s[tag=hasThrowAxe] run scoreboard players set @s SelectItemSlot1 -1

#特殊防具の検知
execute if entity @s[tag=blessarm] run tag @s remove blessarm
execute if data entity @s {Inventory:[{Slot:102b,tag:{blessarm:1b}}]} run tag @s add blessarm
execute if entity @s[tag=lightarm] run tag @s remove lightarm
execute if data entity @s {Inventory:[{Slot:102b,tag:{lightarm:1b}}]} run tag @s add lightarm
execute if entity @s[tag=bear_legs] run tag @s remove bear_legs
execute if data entity @s {Inventory:[{Slot:101b,tag:{bear_legs:1b}}]} run tag @s add bear_legs
execute if entity @s[tag=rabbitfoot] run tag @s remove rabbitfoot
execute if data entity @s {Inventory:[{Slot:101b,tag:{rabbitfoot:1b}}]} run tag @s add rabbitfoot
execute if entity @s[tag=earth_legs] run effect clear @s jump_boost
execute if entity @s[tag=earth_legs] run tag @s remove earth_legs
execute if data entity @s {Inventory:[{Slot:101b,tag:{earth_legs:1b}}]} run tag @s add earth_legs
execute if entity @s[tag=floatboots] run tag @s remove floatboots
execute if data entity @s {Inventory:[{Slot:100b,tag:{floatboots:1b}}]} run tag @s add floatboots
execute if entity @s[tag=resistboots] run tag @s remove resistboots
execute if data entity @s {Inventory:[{Slot:100b,tag:{resistboots:1b}}]} run tag @s add resistboots
execute if entity @s[tag=ice_boots] run tag @s remove ice_boots
execute if data entity @s {Inventory:[{Slot:100b,tag:{ice_boots:1b}}]} run tag @s add ice_boots
execute if entity @s[tag=sliding_boots] run tag @s remove sliding_boots
execute if data entity @s {Inventory:[{Slot:100b,tag:{sliding_boots:1b}}]} run tag @s add sliding_boots
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/special

execute if entity @s[tag=ice_robe] run tag @s remove ice_robe
execute if entity @s[tag=ice_robe_chest] run tag @s remove ice_robe_chest
execute if entity @s[tag=ice_robe_legs] run tag @s remove ice_robe_legs
execute if data entity @s {Inventory:[{Slot:102b,tag:{ice_robe:1b}}]} run tag @s add ice_robe_chest
execute if data entity @s {Inventory:[{Slot:101b,tag:{ice_legs:1b}}]} run tag @s add ice_robe_legs
execute unless entity @s[tag=!ice_robe_chest,tag=!ice_robe_legs] run tag @s add ice_robe

tag @s add hpd
#ステータスのリセット
execute if score @s Mana matches ..-1000 run scoreboard players operation @s maxMana = @s Mana
execute unless score @s maxHP matches 0.. run tag @s add noHP
scoreboard players set @s maxHP 40
scoreboard players set @s maxMana 100
scoreboard players set @s ManaRegenCount 100
#scoreboard players set @s ManaRegenAmount 100
scoreboard players set @s armorResist 0
scoreboard players set @s magicResist 0
scoreboard players set @s projectileResist 0
scoreboard players set @s fireResist 0
scoreboard players set @s blastResist 0
scoreboard players set @s HPRegenCount 80
scoreboard players set @s statDamageBoost 100
scoreboard players set @s healPower 100
scoreboard players set @s magicBoost 100
scoreboard players set @s statCTAmount 1000


#防具ステータス検知
#最大HP
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.maxHP
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.maxHP
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.maxHP
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.maxHP
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.maxHP
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/max-hp
scoreboard players operation @s maxHP += #dummy Cooldown1
scoreboard players operation @s maxHP += #dummy Cooldown2
scoreboard players operation @s maxHP += #dummy Cooldown3
scoreboard players operation @s maxHP += #dummy Cooldown4
scoreboard players operation @s maxHP += #dummy Cooldown5
#最大MP
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.maxMP
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.maxMP
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/max-mp
scoreboard players operation @s maxMana += #dummy Cooldown1
scoreboard players operation @s maxMana += #dummy Cooldown2
scoreboard players operation @s maxMana += #dummy Cooldown3
scoreboard players operation @s maxMana += #dummy Cooldown4
scoreboard players operation @s maxMana += #dummy Cooldown5
#MP回復速度
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.MPRegen
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.MPRegen
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.MPRegen
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.MPRegen
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.MPRegen
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/mp-regen
scoreboard players operation @s ManaRegenCount += #dummy Cooldown1
scoreboard players operation @s ManaRegenCount += #dummy Cooldown2
scoreboard players operation @s ManaRegenCount += #dummy Cooldown3
scoreboard players operation @s ManaRegenCount += #dummy Cooldown4
scoreboard players operation @s ManaRegenCount += #dummy Cooldown5
#物理耐性
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.armorResist
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.armorResist
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.armorResist
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.armorResist
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.armorResist
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/armor-resist
scoreboard players operation @s armorResist += #dummy Cooldown1
scoreboard players operation @s armorResist += #dummy Cooldown2
scoreboard players operation @s armorResist += #dummy Cooldown3
scoreboard players operation @s armorResist += #dummy Cooldown4
scoreboard players operation @s armorResist += #dummy Cooldown5
scoreboard players operation @s armorResist += #dummy Cooldown6
#魔法耐性
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.magicResist
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.magicResist
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.magicResist
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.magicResist
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.magicResist
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/magic-resist
scoreboard players operation @s magicResist += #dummy Cooldown1
scoreboard players operation @s magicResist += #dummy Cooldown2
scoreboard players operation @s magicResist += #dummy Cooldown3
scoreboard players operation @s magicResist += #dummy Cooldown4
scoreboard players operation @s magicResist += #dummy Cooldown5
scoreboard players operation @s magicResist += #dummy Cooldown6
#(物理)飛び道具耐性
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.projectileResist
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.projectileResist
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.projectileResist
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.projectileResist
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.projectileResist
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/projectile-resist
scoreboard players operation @s projectileResist += #dummy Cooldown1
scoreboard players operation @s projectileResist += #dummy Cooldown2
scoreboard players operation @s projectileResist += #dummy Cooldown3
scoreboard players operation @s projectileResist += #dummy Cooldown4
scoreboard players operation @s projectileResist += #dummy Cooldown5
scoreboard players operation @s projectileResist += #dummy Cooldown6
#火炎耐性
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.fireResist
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.fireResist
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.fireResist
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.fireResist
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.fireResist
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/fire-resist
scoreboard players operation @s fireResist += #dummy Cooldown1
scoreboard players operation @s fireResist += #dummy Cooldown2
scoreboard players operation @s fireResist += #dummy Cooldown3
scoreboard players operation @s fireResist += #dummy Cooldown4
scoreboard players operation @s fireResist += #dummy Cooldown5
scoreboard players operation @s fireResist += #dummy Cooldown6
#爆発耐性
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.blastResist
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.blastResist
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.blastResist
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.blastResist
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.blastResist
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/blast-resist
scoreboard players operation @s blastResist += #dummy Cooldown1
scoreboard players operation @s blastResist += #dummy Cooldown2
scoreboard players operation @s blastResist += #dummy Cooldown3
scoreboard players operation @s blastResist += #dummy Cooldown4
scoreboard players operation @s blastResist += #dummy Cooldown5
scoreboard players operation @s blastResist += #dummy Cooldown6
#魔法攻撃力
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.magicBoost
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.magicBoost
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.magicBoost
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.magicBoost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.magicBoost
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/magic-boost
scoreboard players operation @s magicBoost += #dummy Cooldown1
scoreboard players operation @s magicBoost += #dummy Cooldown2
scoreboard players operation @s magicBoost += #dummy Cooldown3
scoreboard players operation @s magicBoost += #dummy Cooldown4
scoreboard players operation @s magicBoost += #dummy Cooldown5
scoreboard players operation @s magicBoost += #dummy Cooldown6
#CT短縮
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:103b}].tag.CTCut
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:102b}].tag.CTCut
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:101b}].tag.CTCut
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:100b}].tag.CTCut
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{handAttributes:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:-106b}].tag.CTCut
execute if entity @s[tag=bless_invisible_now,tag=bless_invisible2] run function wancomatter:general/bless/inv-inventory-changed/ct-cut
scoreboard players operation @s statCTAmount -= #dummy Cooldown1
scoreboard players operation @s statCTAmount -= #dummy Cooldown2
scoreboard players operation @s statCTAmount -= #dummy Cooldown3
scoreboard players operation @s statCTAmount -= #dummy Cooldown4
scoreboard players operation @s statCTAmount -= #dummy Cooldown5
scoreboard players reset #dummy

#加護のホットバー検知処理とスコア化
scoreboard players reset @s bless1
scoreboard players reset @s bless2
scoreboard players reset @s bless3
scoreboard players reset @s bless4
scoreboard players reset #dummy
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown1 run data get entity @s Inventory[{Slot:0b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown2 run data get entity @s Inventory[{Slot:1b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown3 run data get entity @s Inventory[{Slot:2b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown4 run data get entity @s Inventory[{Slot:3b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown5 run data get entity @s Inventory[{Slot:4b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown6 run data get entity @s Inventory[{Slot:5b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:6b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown7 run data get entity @s Inventory[{Slot:6b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown8 run data get entity @s Inventory[{Slot:7b}].tag.CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{blessItem:1b}}]}] store result score #dummy Cooldown9 run data get entity @s Inventory[{Slot:8b}].tag.CustomModelData

execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown1 matches 1.. if entity @s[scores={Cooldown1=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown1
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown2 matches 1.. if entity @s[scores={Cooldown2=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown2
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown3 matches 1.. if entity @s[scores={Cooldown3=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown3
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown4 matches 1.. if entity @s[scores={Cooldown4=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown4
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown5 matches 1.. if entity @s[scores={Cooldown5=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown5
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown6 matches 1.. if entity @s[scores={Cooldown6=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown6
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown7 matches 1.. if entity @s[scores={Cooldown7=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown7
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown8 matches 1.. if entity @s[scores={Cooldown8=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown8
execute unless entity @s[scores={bless1=1..}] if score #dummy Cooldown9 matches 1.. if entity @s[scores={Cooldown9=..0}] run scoreboard players operation @s bless1 >< #dummy Cooldown9

execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown2 matches 1.. if entity @s[scores={Cooldown2=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown2
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown3 matches 1.. if entity @s[scores={Cooldown3=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown3
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown4 matches 1.. if entity @s[scores={Cooldown4=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown4
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown5 matches 1.. if entity @s[scores={Cooldown5=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown5
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown6 matches 1.. if entity @s[scores={Cooldown6=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown6
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown7 matches 1.. if entity @s[scores={Cooldown7=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown7
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown8 matches 1.. if entity @s[scores={Cooldown8=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown8
execute unless entity @s[scores={bless2=1..}] if score #dummy Cooldown9 matches 1.. if entity @s[scores={Cooldown9=..0}] run scoreboard players operation @s bless2 >< #dummy Cooldown9

execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown3 matches 1.. if entity @s[scores={Cooldown3=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown3
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown4 matches 1.. if entity @s[scores={Cooldown4=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown4
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown5 matches 1.. if entity @s[scores={Cooldown5=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown5
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown6 matches 1.. if entity @s[scores={Cooldown6=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown6
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown7 matches 1.. if entity @s[scores={Cooldown7=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown7
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown8 matches 1.. if entity @s[scores={Cooldown8=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown8
execute unless entity @s[scores={bless3=1..}] if score #dummy Cooldown9 matches 1.. if entity @s[scores={Cooldown9=..0}] run scoreboard players operation @s bless3 >< #dummy Cooldown9

execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown4 matches 1.. if entity @s[scores={Cooldown4=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown4
execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown5 matches 1.. if entity @s[scores={Cooldown5=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown5
execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown6 matches 1.. if entity @s[scores={Cooldown6=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown6
execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown7 matches 1.. if entity @s[scores={Cooldown7=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown7
execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown8 matches 1.. if entity @s[scores={Cooldown8=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown8
execute if entity @s[tag=blessarm] unless entity @s[scores={bless4=1..}] if score #dummy Cooldown9 matches 1.. if entity @s[scores={Cooldown9=..0}] run scoreboard players operation @s bless4 >< #dummy Cooldown9

#宝具: 一点特化を持っている場合、statCTAmountを倍化
execute if data entity @s {Inventory:[{tag:{onepoint_cast_available:1b}}]} run scoreboard players operation @s statCTAmount *= #2 counter

#加護のバフ処理
#使用ダミーエンティティ:#bless(counter)
execute if entity @s[scores={bless1=3}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=3}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=3}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=3}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1 run scoreboard players add @s maxHP 10
execute if score #bless counter matches 2.. run scoreboard players add @s maxHP 20
scoreboard players set #bless counter 0

execute if entity @s[scores={bless1=4}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=4}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=4}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=4}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter = @s statCTAmount
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter *= #3 counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter /= #20 counter
execute if score #bless counter matches 1.. run scoreboard players operation @s statCTAmount -= #bless subcounter
execute if score #bless counter matches 2.. run scoreboard players operation @s statCTAmount -= #bless subcounter
scoreboard players set #bless counter 0

scoreboard players operation @s statCTAmount -= #dummy Cooldown1
scoreboard players operation @s statCTAmount -= #dummy Cooldown2
scoreboard players operation @s statCTAmount -= #dummy Cooldown3
scoreboard players operation @s statCTAmount -= #dummy Cooldown4
scoreboard players operation @s statCTAmount -= #dummy Cooldown5


execute if entity @s[scores={bless1=5}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=5}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=5}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=5}] run scoreboard players add #bless counter 1
execute unless score @s blessNo5 = #bless counter run effect clear @s minecraft:fire_resistance
execute unless score @s blessNo5 = #bless counter run effect clear @s minecraft:water_breathing
execute unless score @s blessNo5 = #bless counter run effect clear @s minecraft:dolphins_grace
scoreboard players operation @s blessNo5 = #bless counter
execute if score #bless counter matches 1.. run effect give @s minecraft:fire_resistance 100000 0 false
execute if score #bless counter matches 1.. run effect give @s minecraft:water_breathing 100000 0 false
execute if score #bless counter matches 2.. run effect give @s minecraft:dolphins_grace 100000 0 false
scoreboard players reset #bless

execute if entity @s[scores={bless1=6}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=6}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=6}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=6}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter2 = @s ManaRegenCount
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter2 *= #16 counter
execute if score #bless counter matches 1.. run scoreboard players operation #bless subcounter2 /= #10 counter
execute if score #bless counter matches 2.. run scoreboard players operation #bless subcounter2 *= #2 counter
execute if score #bless counter matches 1.. run scoreboard players operation @s ManaRegenCount = #bless subcounter2
scoreboard players set #bless counter 0

execute if entity @s[scores={bless1=7}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=7}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=7}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=7}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1 run scoreboard players add @s maxMana 125
execute if score #bless counter matches 2.. run scoreboard players add @s maxMana 250
scoreboard players reset #bless

execute if data entity @s Inventory[{tag:{CustomModelData:8,blessItem:1b}}] run scoreboard players set #bless counter 0
execute if entity @s[scores={bless1=8}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=8}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=8}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=8}] run scoreboard players add #bless counter 1
scoreboard players operation #bless counter *= #6 counter
execute if score #bless counter matches 1.. run function wancomatter:general/bless/book_magic_count
scoreboard players operation @s ManaReactiveHeal = #bless counter
scoreboard players reset #bless

execute if entity @s[scores={bless1=9}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=9}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=9}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=9}] run scoreboard players add #bless counter 1
scoreboard players operation @s HPRegenAmount = #10 counter
execute if score #bless counter matches 1 run scoreboard players set @s HPRegenAmount 20
execute if score #bless counter matches 2.. run scoreboard players set @s HPRegenAmount 30
execute if entity @e[tag=salmon_AEC,limit=1] run scoreboard players operation #bless playerNumber = @s playerNumber
execute as @e[tag=salmon_AEC,scores={counter=..397}] if score @s playerNumber = #bless playerNumber run tag @s add flag
execute if entity @e[tag=flag,limit=1] at @e[tag=flag] run scoreboard players add @s HPRegenAmount 15
execute if entity @e[tag=flag,limit=1] run tag @e[tag=flag] remove flag
scoreboard players reset #bless
#因果応報
execute if entity @s[scores={bless1=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=13}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=13}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players add @s statDamageBoost 15
execute if score #bless counter matches 2.. run scoreboard players add @s statDamageBoost 15
scoreboard players reset #bless counter
#痛いのは嫌です
execute if entity @s[scores={bless1=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=14}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=14}] run scoreboard players add #bless counter 1
attribute @s minecraft:generic.movement_speed modifier remove f7c4f9be-6c14-4013-a9d6-14
execute if score #bless counter matches 1 run attribute @s minecraft:generic.movement_speed modifier add f7c4f9be-6c14-4013-a9d6-14 "itainoha_iyadesu" -0.10 multiply
execute if score #bless counter matches 2.. run attribute @s minecraft:generic.movement_speed modifier add f7c4f9be-6c14-4013-a9d6-14 "itainoha_iyadesu" -0.20 multiply
scoreboard players reset #bless counter
#這い寄る疾風
execute if entity @s[scores={bless1=25}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=25}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=25}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=25}] run scoreboard players add #bless counter 1
attribute @s minecraft:generic.movement_speed modifier remove f7c4f9be-6c14-4013-a9d6-25
execute if score #bless counter matches 1 run attribute @s minecraft:generic.movement_speed modifier add f7c4f9be-6c14-4013-a9d6-25 "haiyoru_sippuu" 0.15 multiply
execute if score #bless counter matches 2.. run attribute @s minecraft:generic.movement_speed modifier add f7c4f9be-6c14-4013-a9d6-25 "haiyoru_sippuu" 0.30 multiply
execute if score #bless counter matches 1.. run scoreboard players remove @s statDamageBoost 5
execute if score #bless counter matches 2.. run scoreboard players remove @s statDamageBoost 5
scoreboard players reset #bless counter

execute if entity @s[scores={bless1=17}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=17}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=17}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=17}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run scoreboard players add @s healPower 25
execute if score #bless counter matches 2.. run scoreboard players add @s healPower 25
scoreboard players reset #bless counter

execute if entity @s[tag=bless_of_survive] run tag @s remove bless_of_survive
execute if entity @s[tag=bless_of_survive2] run tag @s remove bless_of_survive2
execute if entity @s[scores={bless1=19}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=19}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=19}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=19}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run tag @s add bless_of_survive
execute if score #bless counter matches 2.. run tag @s add bless_of_survive2
scoreboard players reset #bless counter

execute if entity @s[tag=bless_invisible] run tag @s remove bless_invisible
execute if entity @s[tag=bless_invisible2] run tag @s remove bless_invisible2
execute if entity @s[scores={bless1=21}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=21}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=21}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=21}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run tag @s add bless_invisible
execute if score #bless counter matches 2.. run tag @s add bless_invisible2
scoreboard players reset #bless counter

execute if entity @s[tag=bless_of_hunger] run tag @s remove bless_of_hunger
execute if entity @s[tag=bless_of_hunger2] run tag @s remove bless_of_hunger2
execute if entity @s[scores={bless1=22}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=22}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=22}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=22}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 1.. run tag @s add bless_of_hunger
execute if score #bless counter matches 2.. run tag @s add bless_of_hunger2
scoreboard players set #bless counter 0

execute if entity @s[scores={bless1=23}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=23}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=23}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=23}] run scoreboard players add #bless counter 1
scoreboard players operation @s blessNo23 = #bless counter
scoreboard players set #bless counter 0

#銃撃の名手
execute if entity @s[tag=extend_magazine2] run tag @s remove extend_magazine2
execute if entity @s[scores={bless1=27}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless2=27}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless3=27}] run scoreboard players add #bless counter 1
execute if entity @s[scores={bless4=27}] run scoreboard players add #bless counter 1
execute if score #bless counter matches 2.. run tag @s add extend_magazine2
scoreboard players reset #bless counter


scoreboard players operation @s ManaPer20 = @s maxMana
scoreboard players operation @s ManaPer20 /= #20 counter

execute if entity @s[tag=noHP] run scoreboard players reset @s maxHP
tag @s[tag=noHP] remove noHP
advancement revoke @s only wancomatter:general/inventory_changed