setblock 13 64 0 minecraft:air
setblock 13 64 0 minecraft:birch_sign[rotation=4]{front_text:{messages:[{"text":"----------------","color":"dark_gray"},{"text":"† 1on1 †"},{"text":"MAP:遺跡"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
execute positioned 13.5 64 0.5 unless entity @e[type=interaction,tag=wnkm.sign.ruins,distance=..0.25,limit=1] run summon interaction ~ ~ ~ {width:0.85f,height:0.8f,response:1b,Tags:["wnkm.owned","wnkm.sign","wnkm.sign.duel","wnkm.sign.ruins"]}
