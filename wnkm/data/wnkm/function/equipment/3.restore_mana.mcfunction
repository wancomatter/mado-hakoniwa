# 1 + (最大MP - 100) * 0.002 を千分率で蓄積して端数を引き継ぐ。
execute store result score @s ManaRegenAmount run compute entity @s integer {type:"add",inputs:[800,{type:"score",score:"ManaRegenAmount",target:{type:"context",target:"target_entity"}},{type:"mul",inputs:[2,{type:"score",score:"maxMana",target:{type:"context",target:"target_entity"}}]}]}
execute store result score @s Mana run compute entity @s integer {type:"min",inputs:[{type:"score",score:"maxMana",target:{type:"context",target:"target_entity"}},{type:"add",inputs:[{type:"score",score:"Mana",target:{type:"context",target:"target_entity"}},{type:"div",left:{type:"score",score:"ManaRegenAmount",target:{type:"context",target:"target_entity"}},right:1000}]}]}
scoreboard players operation @s ManaRegenAmount %= #1000 counter
scoreboard players remove @s ManaCount 2000
