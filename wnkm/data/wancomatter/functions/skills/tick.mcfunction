kill @e[tag=kill]

# ダメージ判定
execute if entity @a[limit=1,scores={shieldBlock=1..}] as @a[scores={shieldBlock=1..}] run function wancomatter:general/shield-block
execute as @e[scores={hurtTimeTaken=1..}] if data entity @s {HurtTime:1s} run scoreboard players reset @s hurtTimeTaken
execute as @e[scores={hurtTimeTaken=1..},tag=!isDamaged] if data entity @s {HurtTime:0s} run scoreboard players reset @s hurtTimeTaken
execute if entity @e[tag=isDamaged,limit=1] run tag @e[tag=isDamaged] remove isDamaged
execute if entity @e[tag=mob,tag=!type_slime,type=!player,nbt=!{Health:1000f},limit=1] as @e[tag=mob,tag=!type_slime,type=!player,nbt=!{Health:1000f}] run function wancomatter:general/mob-damage
execute if entity @e[tag=boss_hitbox,type=!player,nbt=!{Health:1000f},limit=1] as @e[tag=boss_hitbox,type=!player,nbt=!{Health:1000f}] run function wancomatter:general/mob-damage
execute if entity @e[tag=mob,tag=type_slime] as @e[tag=mob,tag=type_slime,limit=1] run function wancomatter:general/mob-damage
execute if entity @e[tag=!projectile,tag=!noMob,scores={damageTaken=1..},limit=1] as @e[tag=!projectile,tag=!noMob,scores={damageTaken=1..}] at @s run function wancomatter:general/damagetaken/main
execute if entity @e[tag=base,limit=1] as @e[tag=base] at @s if entity @s[scores={HP=..0}] run kill @e[type=armor_stand,tag=baseStand,distance=..0.126,limit=1,sort=nearest]

execute if entity @e[scores={instantKB_resist=-50..},limit=1] run function wancomatter:operation/kb_resist_tick
execute if entity @e[tag=clear_levitate] run effect clear @e[tag=clear_levitate] minecraft:levitation
execute if entity @e[tag=clear_levitate] run tag @e[tag=clear_levitate] remove clear_levitate
execute if entity @e[scores={levitateOperate=1}] run effect clear @e[scores={levitateOperate=1}] minecraft:levitation
execute if entity @e[scores={levitateOperate=1..}] run scoreboard players remove @e[scores={levitateOperate=1..}] levitateOperate 1
execute if entity @a[tag=care_fire,limit=1] as @a[tag=care_fire] run tp @s @s
execute if entity @a[tag=care_fire,limit=1] as @a[tag=care_fire] run gamemode adventure @s
execute if entity @a[tag=care_fire,limit=1] as @a[tag=care_fire] run tag @s remove care_fire

execute if entity @a[tag=parry_antikb,limit=1] as @a[tag=parry_antikb] run tp @s @s
execute if entity @a[tag=parry_antikb,limit=1] as @a[tag=parry_antikb] run tag @s remove parry_antikb

#リコイル周り
execute if entity @a[scores={recoilTime=-1..},limit=1] as @a[scores={recoilTime=-1..}] at @s run function wancomatter:skills/recoil_tick

#防具系の特殊効果
execute if entity @a[tag=lightarm,limit=1] as @a[tag=lightarm] if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} run function wancomatter:general/cut-slowness
execute if entity @a[tag=bear_legs,limit=1] as @a[tag=bear_legs] if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} run function wancomatter:general/cut-slowness


#要塞崩しのパーティクル
execute if entity @e[tag=yamakuzushi_AEC,limit=1] as @e[tag=yamakuzushi_AEC] at @s run function wancomatter:general/damagetaken/yamakuzushi/tick
execute if entity @a[scores={yamakuzushiCT=1..}] as @e[scores={yamakuzushiCT=1..}] run scoreboard players remove @s yamakuzushiCT 1
#火矢-1
execute if entity @e[tag=fire_arrow_stand,limit=1] as @e[tag=fire_arrow_stand] run function wancomatter:skills/001/tick
#種火-2
execute if entity @e[tag=add_flame_stand,limit=1] as @e[tag=add_flame_stand] run function wancomatter:skills/002/tick
#icicle-3
execute if entity @e[tag=icicle,limit=1] as @e[tag=icicle] at @s run function wancomatter:skills/003/tick
execute if entity @e[tag=traped-icicle,tag=!icicle,limit=1] as @e[tag=traped-icicle,tag=!icicle] at @s run function wancomatter:skills/003/trap-tick
#stoneblast-4
execute if entity @e[tag=stoneblast_p_stand,limit=1] as @e[tag=stoneblast_p_stand] run function wancomatter:skills/004/tick
execute if entity @e[tag=stone-blast,limit=1] as @e[tag=stone-blast] at @s run function wancomatter:skills/004/tick_shot
#魔弾銃-5
execute if entity @e[tag=mana-gun,limit=1] as @e[tag=mana-gun] at @s run function wancomatter:skills/005/tick
#陽炎-6
execute if entity @e[tag=heathaze_stand,limit=1] as @e[tag=heathaze_stand] run function wancomatter:skills/006/tick
#tornado-7
execute if entity @e[tag=tornado,limit=1] as @e[tag=tornado] at @s run function wancomatter:skills/007/tick
#火炎弾-8
execute if entity @e[tag=fireball_p_stand,limit=1] as @e[tag=fireball_p_stand] run function wancomatter:skills/008/tick2
execute if entity @e[tag=fireball,limit=1] as @e[tag=fireball] at @s run function wancomatter:skills/008/tick
#シリウス-11
execute if entity @e[tag=sirius_wolf,limit=1] as @e[tag=sirius_wolf] at @s run function wancomatter:skills/011/tick1
execute if entity @e[tag=sirius_circle,limit=1] as @e[tag=sirius_circle] at @s run function wancomatter:skills/011/tick2
#隠密-12
execute if entity @e[tag=hide-mode,limit=1] as @e[tag=hide-mode] at @s run function wancomatter:skills/012/tick
#stealpower-13
execute if entity @e[tag=steal-power,limit=1] as @e[tag=steal-power] at @s run function wancomatter:skills/013/tick
#聖なる泉-14
execute if entity @e[tag=holy-spring,limit=1] as @e[tag=holy-spring] at @s run function wancomatter:skills/014/tick
#聖なる鐘-15
execute if entity @a[tag=holy-bell,limit=1] as @a[tag=holy-bell] at @s run function wancomatter:skills/015/tick
#聖なる鐘-15
execute if entity @e[tag=blaze-raze1,limit=1] as @e[tag=blaze-raze1] at @s run function wancomatter:skills/017/tick1
execute if entity @e[tag=blaze-raze2,limit=1] as @e[tag=blaze-raze2] at @s run function wancomatter:skills/017/tick2
#エレキショック-19
execute if entity @e[tag=elec,limit=1] as @e[tag=elec] at @s run function wancomatter:skills/019/tick
#真空波-20
execute if entity @e[tag=windcut_p_stand,limit=1] as @e[tag=windcut_p_stand] run function wancomatter:skills/020/tick2
execute if entity @e[tag=windcut,limit=1] as @e[tag=windcut] at @s run function wancomatter:skills/020/tick
#毒粘着巣-21
execute if entity @e[tag=poison-web,limit=1] as @e[tag=poison-web] at @s run function wancomatter:skills/021/tick
#ボーンストライク-22
#execute if entity @a[tag=p-bone-strike,limit=1] as @a[tag=p-bone-strike] at @s run function wancomatter:skills/022/p-tick
#execute if entity @e[tag=bone-strike,limit=1] as @e[tag=bone-strike] at @s run function wancomatter:skills/022/tick
#シャイン-23
execute if entity @e[tag=fire_whip,limit=1] as @e[tag=fire_whip] at @s run function wancomatter:skills/023/1.tick
#硝煙-25
execute if entity @e[tag=shoen_gun,limit=1] as @e[tag=shoen_gun] at @s run function wancomatter:skills/025/tick
#妖精召喚
execute if entity @e[tag=027spirit,limit=1] as @e[tag=027spirit] at @s run function wancomatter:skills/027/fairy_spirit/1.tick
#シュルカータレット-28
execute if entity @e[tag=summon_shulker,limit=1] as @e[tag=summon_shulker] at @s run function wancomatter:skills/028/tick
execute if entity @e[tag=shulker_turret_bullet,limit=1] as @e[tag=shulker_turret_bullet] at @s run function wancomatter:skills/028/bullet_tick
#埴輪-29
execute if entity @e[tag=summon_knight,limit=1] as @e[tag=summon_knight] at @s run function wancomatter:skills/029/tick
#馬-33
execute if entity @e[tag=summon_horse,limit=1] as @e[tag=summon_horse] at @s run function wancomatter:skills/033/tick
execute if entity @e[tag=summon_horse_stand,limit=1] as @e[tag=summon_horse_stand] at @s run function wancomatter:skills/033/tick-stand
#スフィアランチャー-34
execute if entity @e[tag=GreLauncher,limit=1] as @e[tag=GreLauncher] at @s run function wancomatter:skills/034/tick
execute if entity @e[tag=GreL_judge,limit=1] as @e[tag=GreL_judge] at @s run function wancomatter:skills/034/tick2
#土壁-35
execute if entity @e[tag=shulkerPassenged,limit=1] run function wancomatter:skills/035/tick
execute if entity @e[tag=wnkm035shulker,limit=1] run function wancomatter:skills/035/tick2
#水球-36
execute if entity @e[tag=set_water,limit=1] as @e[tag=set_water] at @s run function wancomatter:skills/036/tick
#吸根-37
execute if entity @e[tag=drainplant,limit=1] as @e[tag=drainplant] at @s run function wancomatter:skills/037/tick
execute if entity @e[tag=drainplant_hit_stand,limit=1] as @e[tag=drainplant_hit_stand] run function wancomatter:skills/037/hit-tick
#小転移-38
execute if entity @e[tag=short_teleport,limit=1] as @e[tag=short_teleport] at @s run function wancomatter:skills/038/tick
#魔光雷電-39
execute if entity @e[tag=shiden,limit=1] as @e[tag=shiden] at @s run function wancomatter:skills/039/tick

#ミサイル-41
execute if entity @e[tag=horming_missile,limit=1] as @e[tag=horming_missile] at @s run function wancomatter:skills/041/tick
#天祈結界-42
execute if entity @e[tag=tenki,limit=1] as @e[tag=tenki] at @s run function wancomatter:skills/042/tick
#モーニングスター-43
execute if entity @e[tag=morning_star,limit=1] as @e[tag=morning_star] at @s run function wancomatter:skills/043/tick
#firecircle-45
execute if entity @e[tag=firecircle,limit=1] as @e[tag=firecircle] at @s run function wancomatter:skills/045/tick
execute if entity @e[tag=firecircle_elem,limit=1] as @e[tag=firecircle_elem] at @s run function wancomatter:skills/045/tick_elem
#lightning-46
execute if entity @e[tag=lightning,limit=1] as @e[tag=lightning] at @s run function wancomatter:skills/046/tick
execute if entity @e[tag=lightning_elem,limit=1] as @e[tag=lightning_elem] at @s run function wancomatter:skills/046/tick_elem
#blizzard-47
execute if entity @e[tag=blizzard,limit=1] as @e[tag=blizzard] at @s run function wancomatter:skills/047/tick
#ギャンブルシチュー-48
execute if entity @e[tag=gamble_stew_stand,limit=1] as @e[tag=gamble_stew_stand] at @s run function wancomatter:skills/048/tick
#手榴弾-49
execute if entity @e[type=minecraft:area_effect_cloud,limit=1,nbt={Effects:[{ShowParticles:0b,Amplifier:49b,Id:31}]}] as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{ShowParticles:0b,Amplifier:49b,Id:31}]}] at @s run function wancomatter:skills/049/bomb
execute if entity @e[tag=grenadeAEC,limit=1] as @e[tag=grenadeAEC] at @s run function wancomatter:skills/049/tick
#hate_flash-50
execute if entity @e[tag=hate_flash,limit=1] as @e[tag=hate_flash] at @s run function wancomatter:skills/050/tick
#光玉-51
execute if entity @e[tag=spectral_shot,limit=1] as @e[tag=spectral_shot] at @s run function wancomatter:skills/051/tick
execute if entity @e[tag=spectral_shot_judge,limit=1] as @e[tag=spectral_shot_judge] at @s run function wancomatter:skills/051/tick2
#硬化-52
execute if entity @e[tag=metal,limit=1] as @e[tag=metal] at @s run function wancomatter:skills/052/tick
#自己再生-54
execute if entity @e[tag=self_heal,limit=1] as @e[tag=self_heal] at @s run function wancomatter:skills/054/tick
#風吹矢-55
execute if entity @e[tag=wind_arrow,limit=1] as @e[tag=wind_arrow] at @s run function wancomatter:skills/055/tick
#転移門-56
execute if entity @e[tag=portal_pearl_stand,limit=1] as @e[tag=portal_pearl_stand] at @s run function wancomatter:skills/056/tick_stand
execute if entity @e[tag=portal_stand,limit=1] as @e[tag=portal_stand] at @s run function wancomatter:skills/056/tick_portal
execute if entity @e[tag=portal_using,limit=1] as @e[tag=portal_using] at @s run function wancomatter:skills/056/tick_using
#防護壁-058
execute if entity @e[type=minecraft:area_effect_cloud,limit=1,nbt={Effects:[{ShowParticles:0b,Amplifier:58b,Id:31}]}] as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{ShowParticles:0b,Amplifier:58b,Id:31}]}] at @s run function wancomatter:skills/058/create_wall
execute if entity @e[tag=projectile_wall,limit=1] run function wancomatter:skills/058/tick
#スケルポン-059
execute if entity @e[tag=skelepon,limit=1] as @e[tag=skelepon] at @s run function wancomatter:skills/059/tick
#死返死-060
execute if entity @e[tag=death_counter_stand,limit=1] as @e[tag=death_counter_stand] run function wancomatter:skills/060/tick
#電光-061
execute if entity @e[tag=denkou,limit=1] as @e[tag=denkou] at @s run function wancomatter:skills/061/tick
#氷扇-062
execute if entity @e[tag=icefan,limit=1] as @e[tag=icefan] at @s run function wancomatter:skills/062/tick
#土柱-063
execute if entity @e[tag=stone_pillar,limit=1] as @e[tag=stone_pillar] at @s run function wancomatter:skills/063/tick
execute if entity @e[tag=stone_pillar_dmg,limit=1] as @e[tag=stone_pillar_dmg] at @s run function wancomatter:skills/063/tick2
#対空魔砲-064
execute if entity @e[tag=anti_aircraft,limit=1] as @e[tag=anti_aircraft] at @s run function wancomatter:skills/064/tick
execute if entity @e[tag=anti_aircraft_projectile,limit=1] as @e[tag=anti_aircraft_projectile] at @s run function wancomatter:skills/064/tick2
#影縫-066
execute if entity @e[tag=shadow,limit=1] as @e[tag=shadow] at @s run function wancomatter:skills/066/tick
#マスケット-067
execute if entity @e[tag=musket,limit=1] as @e[tag=musket] at @s run function wancomatter:skills/067/tick
#水鉄砲-068
execute if entity @e[tag=aqua_gun,limit=1] as @e[tag=aqua_gun] at @s run function wancomatter:skills/068/tick
#反射光線-069
execute if entity @e[tag=097razer,limit=1] as @e[tag=097razer] at @s run function wancomatter:skills/069/tick
#水牢-070
execute if entity @e[tag=110suirou,limit=1] as @e[tag=110suirou] at @s run function wancomatter:skills/070/tick
#光輝裂玉-071
execute if entity @e[tag=071shine,limit=1] as @e[tag=071shine] at @s run function wancomatter:skills/071/tick
#STM-110-072
execute if entity @e[tag=072ar,limit=1] as @e[tag=072ar] at @s run function wancomatter:skills/072/tick
#煙幕-074
execute if entity @e[tag=smoke_shot,limit=1] as @e[tag=smoke_shot] at @s run function wancomatter:skills/074/tick
#迸る稲妻-075
execute if entity @e[tag=buff_lightning,limit=1] as @e[tag=buff_lightning] at @s run function wancomatter:skills/075/tick
#纏いし漆黒-076
execute if entity @e[tag=buff_darkness,limit=1] as @e[tag=buff_darkness] at @s run function wancomatter:skills/076/tick
#血鎖-077
execute if entity @e[tag=bloodchain_stand,limit=1] as @e[tag=bloodchain_stand] run function wancomatter:skills/077/tick
#流星群-078
execute if entity @e[tag=meteorStand,limit=1] as @e[tag=meteorStand] at @s run function wancomatter:skills/078/tick
execute if entity @e[tag=meteorStand_fall,limit=1] as @e[tag=meteorStand_fall] at @s run function wancomatter:skills/078/fall_stand/tick
execute if entity @e[tag=meteor_stand_aoc,limit=1] as @e[tag=meteor_stand_aoc] at @s run function wancomatter:skills/078/fall_stand/tick_aoc
execute if entity @e[tag=meteor_bullet,limit=1] as @e[tag=meteor_bullet] at @s run function wancomatter:skills/078/meteor_bullet/tick
#雪だるま伯爵-079
execute if entity @e[tag=summon_snowgolem,limit=1] as @e[tag=summon_snowgolem] at @s run function wancomatter:skills/079/tick
execute if entity @e[tag=snow_golem_bullet,limit=1] as @e[tag=snow_golem_bullet] at @s run function wancomatter:skills/079/bullet/tick
#白裂転禍-080
execute if entity @e[tag=080whiteball,limit=1] as @e[tag=080whiteball] at @s run function wancomatter:skills/080/tick
execute if entity @e[tag=080darkattack,limit=1] as @e[tag=080darkattack] at @s run function wancomatter:skills/080/dark/tick
#時限魔石-081
execute if entity @e[tag=magic_gem,limit=1] as @e[tag=magic_gem] at @s run function wancomatter:skills/081/tick
#蒼炎魔石-082
execute if entity @e[tag=blue_fire_gem,limit=1] as @e[tag=blue_fire_gem] at @s run function wancomatter:skills/082/tick
execute if entity @e[tag=blue_fire_stand,limit=1] as @e[tag=blue_fire_stand] at @s run function wancomatter:skills/082/tick2
#毒針-083
execute if entity @e[tag=summon_wolf,limit=1] as @e[tag=summon_wolf] at @s run function wancomatter:skills/083/tick
#毒針-085
execute if entity @e[tag=poison_needle,limit=1] as @e[tag=poison_needle] at @s run function wancomatter:skills/085/tick
#二連装-086
execute if entity @e[tag=two_gun,limit=1] as @e[tag=two_gun] at @s run function wancomatter:skills/086/tick
#二連装-086
execute if entity @e[tag=hinoki_wand,limit=1] as @e[tag=hinoki_wand] at @s run function wancomatter:skills/087/tick
#紫電-088
execute if entity @e[tag=purple_bolt,limit=1] as @e[tag=purple_bolt] at @s run function wancomatter:skills/088/tick
#圧水-090
execute if entity @e[tag=zipped_water,limit=1] as @e[tag=zipped_water] at @s run function wancomatter:skills/090/tick
execute if entity @e[tag=zipped_water_AEC,limit=1] as @e[tag=zipped_water_AEC] at @s run function wancomatter:skills/090/tick2

#プロキオン-010
execute if entity @e[tag=procyon,limit=1] as @e[tag=procyon] at @s run function wancomatter:skills/010/tick
execute if entity @e[tag=procyon_AEC,limit=1] as @e[tag=procyon_AEC] at @s run function wancomatter:skills/010/tick2
#ベテルギウス-009
execute if entity @e[tag=betelgeuse,limit=1] as @e[tag=betelgeuse] at @s run function wancomatter:skills/009/tick
execute if entity @e[tag=betelgeuse_AEC1,limit=1] as @e[tag=betelgeuse_AEC1] at @s run function wancomatter:skills/009/tick_aec1
execute if entity @e[tag=betelgeuse_AEC2,limit=1] as @e[tag=betelgeuse_AEC2] at @s run function wancomatter:skills/009/tick_aec2
execute if entity @e[tag=betelgeuse_AEC3,limit=1] as @e[tag=betelgeuse_AEC3] at @s run function wancomatter:skills/009/tick_aec3
execute if entity @e[tag=betelgeuse_AEC4,limit=1] as @e[tag=betelgeuse_AEC4] at @s run function wancomatter:skills/009/tick_aec4
execute if entity @e[tag=betelgeuse_AEC5,limit=1] as @e[tag=betelgeuse_AEC5] at @s run function wancomatter:skills/009/tick_aec5
execute if entity @e[tag=betelgeuse_AEC6,limit=1] as @e[tag=betelgeuse_AEC6] at @s run function wancomatter:skills/009/tick_aec6
execute if entity @e[tag=betelgeuse_AEC7,limit=1] as @e[tag=betelgeuse_AEC7] at @s run function wancomatter:skills/009/tick_aec7
execute if entity @e[tag=betelgeuse_AEC8,limit=1] as @e[tag=betelgeuse_AEC8] at @s run function wancomatter:skills/009/tick_aec8
#天の印章-091
execute if entity @e[tag=avaritis_core,limit=1] as @e[tag=avaritis_core] at @s run function wancomatter:skills/091/tick
execute if entity @e[tag=avaritisAEC,limit=1] as @e[tag=avaritisAEC] at @s run function wancomatter:skills/091/tick_aec
#ベガ-092
execute if entity @e[tag=vega,limit=1] as @e[tag=vega] at @s run function wancomatter:skills/092/tick
execute if entity @e[tag=vega_AEC,limit=1] as @e[tag=vega_AEC] at @s run function wancomatter:skills/092/tick_aec
execute if entity @e[tag=vega_AEC2,limit=1] as @e[tag=vega_AEC2] at @s run function wancomatter:skills/092/tick_aec2
execute if entity @e[tag=vega_AEC3,limit=1] as @e[tag=vega_AEC3] at @s run function wancomatter:skills/092/tick_aec3
execute if entity @e[tag=vega_AEC4,limit=1] as @e[tag=vega_AEC4] at @s run function wancomatter:skills/092/tick_aec4
#守の彗星-093
execute if entity @e[tag=guard_star,limit=1] as @e[tag=guard_star] at @s run function wancomatter:skills/093/tick
execute if entity @a[tag=guard_star_buff,limit=1] run effect give @a[tag=guard_star_buff] minecraft:luck 1 9
#スピカ-094
execute if entity @e[tag=spica,limit=1] as @e[tag=spica] at @s run function wancomatter:skills/094/tick
execute if entity @e[tag=spica,limit=1] as @e[tag=spica] at @s run function wancomatter:skills/094/tick
execute if entity @e[tag=spica_AEC,limit=1] as @e[tag=spica_AEC] at @s run function wancomatter:skills/094/tick2
#力の流星-095
execute if entity @e[tag=power_star,limit=1] as @e[tag=power_star] at @s run function wancomatter:skills/095/tick
execute if entity @e[tag=power_star,limit=1] as @e[tag=power_star] at @s run function wancomatter:skills/095/tick
execute if entity @e[tag=power_star_fall,limit=1] as @e[tag=power_star_fall] at @s run function wancomatter:skills/095/tick2
#星翔の羽-018
execute if entity @e[tag=star_feather,limit=1] as @e[tag=star_feather] at @s run function wancomatter:skills/018/tick
execute if entity @e[tag=star_feather_AEC,limit=1] as @e[tag=star_feather_AEC] at @s run function wancomatter:skills/018/tick2
#アンタレス-019
execute if entity @e[tag=antares_ready,limit=1] as @e[tag=antares_ready] at @s run function wancomatter:skills/019/tick
execute if entity @e[tag=antares_bit,limit=1] as @e[tag=antares_bit] at @s run function wancomatter:skills/019/tick2
execute if entity @e[tag=antares_bit_shot,limit=1] as @e[tag=antares_bit_shot] at @s run function wancomatter:skills/019/tick3

#ポセイドン-102
execute if entity @e[tag=poseidon_stand,limit=1] as @e[tag=poseidon_stand] run function wancomatter:skills/102/tick
#黒憐-104
execute if entity @a[gamemode=!spectator,scores={Mana=5..,CooldownX=..0},predicate=wancomatter:is_sneaking,nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}},limit=1] as @a[gamemode=!spectator,scores={Mana=5..,CooldownX=..0},predicate=wancomatter:is_sneaking,nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{CustomModelData:104}}}] at @s run function wancomatter:skills/104/charge_first
execute if entity @a[scores={s104count=0..},limit=1] as @a[scores={s104count=0..}] at @s run function wancomatter:skills/104/count
execute if entity @e[tag=katana-cut,limit=1] as @e[tag=katana-cut] at @s run function wancomatter:skills/104/tick
#血塗られたダガー-106
execute if entity @e[tag=throweddagger,limit=1] as @e[tag=throweddagger] at @s run function wancomatter:skills/106/tick
execute if entity @e[tag=pickupabledagger,limit=1] as @e[tag=pickupabledagger] at @s run function wancomatter:skills/106/tick2
execute if entity @e[tag=trident_blood_dagger,limit=1] as @e[tag=trident_blood_dagger] if data entity @s {DealtDamage:1b} run kill @s
#投げ斧-108
execute if entity @e[tag=throw_axe,limit=1] as @e[tag=throw_axe] at @s run function wancomatter:skills/108/tick
#Awakening-097 
execute if entity @e[tag=Awakening-mode,limit=1] as @e[tag=Awakening-mode] at @s run function wancomatter:skills/097/tick


#無骨槍-107
execute if entity @e[tag=spearPiercing,limit=1] run function wancomatter:skills/107/tick
#飛来槍-107
execute if entity @e[tag=kusaSlash,limit=1] as @e[tag=kusaSlash] at @s run function wancomatter:skills/107/slash/tick
execute if entity @e[tag=kusaNagi,limit=1] as @e[tag=kusaNagi] at @s run function wancomatter:skills/107/charged/tick
execute if entity @e[tag=kusaNagiSlash,limit=1] as @e[tag=kusaNagiSlash] at @s run function wancomatter:skills/107/charged/slash-tick
#木剣-109
execute if entity @e[tag=yggdrasil_stand,limit=1] as @e[tag=yggdrasil_stand] run function wancomatter:skills/109/tick
#黄泉鎌-114
execute if entity @e[tag=scythe_stand,limit=1] as @e[tag=scythe_stand] at @s run function wancomatter:skills/114/tick
#ブーメラン-115
execute if entity @e[tag=boomerang,limit=1] as @e[tag=boomerang] at @s run function wancomatter:skills/115/tick
#解析者-113 
execute if entity @e[tag=StarBurstStream_stand,limit=1] as @e[tag=StarBurstStream_stand] at @s run function wancomatter:skills/113/tick
#拒絶者-116
execute if entity @e[tag=darkRepulser_stand,limit=1] as @e[tag=darkRepulser_stand] at @s run function wancomatter:skills/116/tick
execute if entity @a[scores={CT_darkRepulser=1..},limit=1] run scoreboard players remove @a[scores={CT_darkRepulser=1..}] CT_darkRepulser 1
#ブルームーン-117
execute if entity @e[tag=blue_moon,limit=1] as @e[tag=blue_moon] at @s run function wancomatter:skills/117/tick

#弓矢発射処理
execute if entity @p[scores={bow=1..}] as @a[scores={bow=1..}] run function wancomatter:skills/bow
execute if entity @p[scores={bow=1..}] run scoreboard players reset @a[scores={bow=1..}] bow
execute if entity @p[advancements={wancomatter:general/crossbow=true}] as @a[advancements={wancomatter:general/crossbow=true}] run function wancomatter:skills/crossbow
execute if entity @p[advancements={wancomatter:general/crossbow=true}] run advancement revoke @a[advancements={wancomatter:general/crossbow=true}] only wancomatter:general/crossbow
execute if entity @e[type=arrow,tag=!projectile,limit=1] run tag @e[type=arrow,tag=!projectile] add projectile
execute if entity @e[type=spectral_arrow,tag=!projectile,limit=1] as @e[type=spectral_arrow,tag=!projectile] run data merge entity @s {life:1200s}
execute if entity @e[type=spectral_arrow,tag=!projectile,limit=1] run tag @e[type=spectral_arrow,tag=!projectile] add projectile
#トライデント発射処理
execute if entity @e[type=trident,tag=!projectile,limit=1] as @e[type=trident,tag=!projectile] run function wancomatter:skills/trident_first

#榴弾矢-a06
execute if entity @e[tag=creeperArrow,limit=1] as @e[tag=creeperArrow] at @s run function wancomatter:skills/arrow/06/tick
execute if entity @e[tag=creeperA_judge,limit=1] as @e[tag=creeperA_judge] at @s run function wancomatter:skills/arrow/06/tick2
#流星矢-a07
execute if entity @e[tag=meteorArrow,limit=1] as @e[tag=meteorArrow] at @s run function wancomatter:skills/arrow/07/tick
execute if entity @e[tag=meteor_arrow_AEC,limit=1] as @e[tag=meteor_arrow_AEC] at @s run function wancomatter:skills/arrow/07/tick2
execute if entity @e[tag=meteor_arrow_rain,limit=1] as @e[tag=meteor_arrow_rain] at @s run function wancomatter:skills/arrow/07/tick3
#天雷矢-a08
execute if entity @e[tag=lightningArrow,limit=1] as @e[tag=lightningArrow] at @s run function wancomatter:skills/arrow/08/tick
#氷霧矢-a09
execute if entity @e[tag=freezeArrow,limit=1] as @e[tag=freezeArrow] at @s run function wancomatter:skills/arrow/09/tick
execute if entity @e[tag=freeze_arrow_AEC,limit=1] as @e[tag=freeze_arrow_AEC] at @s run function wancomatter:skills/arrow/09/tick2
execute if entity @e[tag=freeze_arrow_DoT,limit=1] as @e[tag=freeze_arrow_DoT] at @s run function wancomatter:skills/arrow/09/tick3
#バリスタ-c02
execute if entity @a[tag=has_charged_ballista,limit=1] as @e[tag=has_charged_ballista] at @s run function wancomatter:skills/crossbow/02/having
execute if entity @e[tag=ballista,limit=1] as @e[tag=ballista] at @s run function wancomatter:skills/crossbow/02/tick
#魔導弩-c02
execute if entity @e[tag=magic_crossbow,limit=1] as @e[tag=magic_crossbow] at @s run function wancomatter:skills/crossbow/03/tick
#騎士の盾-knightshield
execute if entity @e[tag=KnightShieldStand,limit=1] as @e[tag=KnightShieldStand] at @s run function wancomatter:skills/knightshield/tick
#氷結のブーツ
execute if entity @e[tag=ice_boots_stand,limit=1] as @e[tag=ice_boots_stand] at @s run function wancomatter:general/ice_boots/tick

#瞑想-065
execute if entity @e[tag=meditation,limit=1] as @e[tag=meditation] at @s run function wancomatter:skills/065/tick

#スピカのバフ-094
execute if entity @a[advancements={wancomatter:buff/spica=true},limit=1] as @a[advancements={wancomatter:buff/spica=true}] run function wancomatter:skills/094/tick_buff

execute if entity @a[tag=damagetrade,limit=1] run tag @a[tag=damagetrade] remove damagetrade
execute if entity @a[tag=magic_used,limit=1] run tag @a[tag=magic_used] remove magic_used
execute if entity @a[tag=clear_bowl,limit=1] run clear @a[tag=clear_bowl] minecraft:bowl
execute if entity @a[tag=clear_bowl,limit=1] run tag @a[tag=clear_bowl] remove clear_bowl
execute if entity @a[tag=clear_bottle,limit=1] run clear @a[tag=clear_bottle] minecraft:glass_bottle
execute if entity @a[tag=clear_bottle,limit=1] run tag @a[tag=clear_bottle] remove clear_bottle
#特殊食料
execute if entity @a[tag=eat_golden_apple,limit=1] as @a[tag=eat_golden_apple] run function wancomatter:skills/foods/golden_apple
execute if entity @a[tag=eat_pufferfish,limit=1] as @a[tag=eat_pufferfish] run function wancomatter:skills/foods/pufferfish
execute if entity @a[tag=eat_golden_carrot,limit=1,nbt={HurtTime:0s}] as @a[tag=eat_golden_carrot,nbt={HurtTime:0s}] run function wancomatter:skills/foods/golden_carrot
execute if entity @a[tag=eat_honey_bottle,limit=1] as @a[tag=eat_honey_bottle] run function wancomatter:skills/foods/honey_bottle
#生鮭
execute if entity @e[tag=salmon_AEC,limit=1] as @e[tag=salmon_AEC] run function wancomatter:skills/foods/salmon/tick
#魔染π
execute if entity @e[tag=pumpkin_pie_AEC,limit=1] as @e[tag=pumpkin_pie_AEC] run function wancomatter:skills/foods/pumpkin_pie/tick
#戦パン
execute if entity @e[tag=bread_AEC,limit=1] as @e[tag=bread_AEC] run function wancomatter:skills/foods/bread/tick

execute if entity @e[tag=crit_arrow,limit=1] as @e[tag=crit_arrow] at @s run function wancomatter:skills/critarrow-tick

#execute as @a[scores={rod=1..}] at @s run fill ~5 6 ~5 ~-5 51 ~-5 basalt replace crying_obsidian
#execute as @a[scores={rod=1..}] at @s run fill ~5 6 ~5 ~-5 51 ~-5 basalt replace dried_kelp_block