setblock 0 64 13 minecraft:air
setblock 0 64 13 minecraft:birch_sign[rotation=8]{front_text:{messages:[{"text":"----------------","color":"dark_gray"},{"text":"† 1on1 †"},{"text":"MAP:鉱山"},{"text":"----------------","color":"dark_gray"}],color:"black"},is_waxed:1b}
execute positioned 0.5 64 13.5 unless entity @e[type=interaction,tag=wnkm.sign.mine,distance=..0.25,limit=1] run summon interaction ~ ~ ~ {width:0.85f,height:0.8f,response:1b,Tags:["wnkm.owned","wnkm.sign","wnkm.sign.duel","wnkm.sign.mine"]}
