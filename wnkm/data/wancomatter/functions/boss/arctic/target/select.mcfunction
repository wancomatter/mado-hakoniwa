#ターゲット指定するエンティティにtag:targetを付与
#ターゲット指定するエンティティのdummy=ターゲット索敵範囲*4+x(xは適当な保険値)
#壁避け索敵→targetにavoidタグを付与
#ターゲットのtargetタグは"removeしない"
execute anchored eyes positioned ^ ^ ^ anchored feet as @a[tag=target] facing entity @s feet run function wancomatter:boss/arctic/target/loop
tag @a[tag=target] remove avoid
#execute if entity @s[tag=hit_wall]
execute as @a[tag=target] unless score @s dummy matches -10 run tag @s remove target