playsound minecraft:ui.button.click master @s ~ ~ ~ 1.2 1
execute as @e[tag=monitorUIslime] run tp @s 0 -10 0
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:17s}
summon minecraft:slime 0 -10 0 {Tags:["monitorUIslime"],Size:4,NoAI:1b,Silent:1b,DeathLootTable:"empty",ActiveEffects:[{Id:11,Amplifier:4b,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Team:"noPush"}

execute if entity @e[tag=monitorUIfocus,tag=monitorUI-1,limit=1] run function wancomatter:lobby/monitor/book
execute if entity @e[tag=monitorUIfocus,tag=monitorUI0,limit=1] run function wancomatter:lobby/monitor/close
execute if entity @e[tag=monitorUIfocus,tag=monitorUI1,limit=1] run function wancomatter:lobby/monitor/start_root
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2,limit=1] unless entity @e[tag=1on1_stand,limit=1] run function wancomatter:lobby/monitor/gamemode
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2,limit=1] if entity @e[tag=1on1_stand,limit=1] run function wancomatter:lobby/monitor/gamemode_fail
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3,limit=1] unless score #stagechangeing counter matches 1 run function wancomatter:lobby/monitor/stage
execute if entity @e[tag=monitorUIfocus,tag=monitorUI4,limit=1] run function wancomatter:lobby/monitor/pve/difficulty
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5,limit=1] run function wancomatter:lobby/monitor/pvp/team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI7,limit=1] run function wancomatter:lobby/monitor/itemlimit
execute if entity @e[tag=monitorUIfocus,tag=monitorUI8,limit=1] run function wancomatter:lobby/monitor/time
execute if entity @e[tag=monitorUIfocus,tag=monitorUI9,limit=1] run function wancomatter:lobby/monitor/timeover
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10,limit=1] run function wancomatter:lobby/monitor/timeset
execute if entity @e[tag=monitorUIfocus,tag=monitorUI11,limit=1] run function wancomatter:lobby/monitor/autostart_root
execute if entity @e[tag=monitorUIfocus,tag=monitorUI12,limit=1] run function wancomatter:lobby/monitor/result/root
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13,limit=1] run function wancomatter:lobby/monitor/auto_setting/root
execute if entity @e[tag=monitorUIfocus,tag=monitorUI14,limit=1] run function wancomatter:lobby/monitor/teamarmor
execute if entity @e[tag=monitorUIfocus,tag=monitorUI15,limit=1] run function wancomatter:lobby/monitor/team_edit
execute if entity @e[tag=monitorUIfocus,tag=monitorUI16,limit=1] run function wancomatter:lobby/monitor/pve/life_stock/root
execute if entity @e[tag=monitorUIfocus,tag=monitorUIcancel,limit=1] run function wancomatter:lobby/monitor/reset

execute if entity @e[tag=monitorUIfocus,tag=monitorUI1-1,limit=1] run function wancomatter:lobby/monitor/start_now
execute if entity @e[tag=monitorUIfocus,tag=monitorUI1-x,limit=1] run function wancomatter:lobby/monitor/start_time

execute if entity @e[tag=monitorUIfocus,tag=monitorUI11-1,limit=1] run function wancomatter:lobby/monitor/auto_cancel
execute if entity @e[tag=monitorUIfocus,tag=monitorUI11-x,limit=1] run function wancomatter:lobby/monitor/auto_time

execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-1,limit=1] run function wancomatter:lobby/monitor/gamemode/deathmatch
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-3,limit=1] run function wancomatter:lobby/monitor/gamemode/1on1
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-4,limit=1] run function wancomatter:lobby/monitor/gamemode/tdm
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-5,limit=1] run function wancomatter:lobby/monitor/gamemode/wave
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-1,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/detonator
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-2,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/kirito
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-3,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/dusk
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-4,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/necro
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-5,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/bear
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-2-6,limit=1] run function wancomatter:lobby/monitor/gamemode/bossbattle/dragon
execute if entity @e[tag=monitorUIfocus,tag=monitorUI2-5-1,limit=1] run function wancomatter:lobby/monitor/gamemode/wave/crimson

execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-0option,limit=1] run function wancomatter:lobby/monitor/stage/random_option
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-0,limit=1] run function wancomatter:lobby/monitor/stage/random_check
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-1,limit=1] run function wancomatter:lobby/monitor/stage/1_village
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-2,limit=1] run function wancomatter:lobby/monitor/stage/2_nether
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-3,limit=1] run function wancomatter:lobby/monitor/stage/3_bamboo
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-4,limit=1] run function wancomatter:lobby/monitor/stage/4_pylamid
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-5,limit=1] run function wancomatter:lobby/monitor/stage/5_iron_lab
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-6,limit=1] run function wancomatter:lobby/monitor/stage/6_river
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-7,limit=1] run function wancomatter:lobby/monitor/stage/7_altar
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-ex1,limit=1] run function wancomatter:lobby/monitor/stage/village
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-0cancel,limit=1] run function wancomatter:lobby/monitor/stage/random_cancel
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-0switch,limit=1] as @e[tag=monitorUIfocus,tag=monitorUI3-0switch] at @s run function wancomatter:lobby/monitor/stage/random_switch
execute if entity @e[tag=monitorUIfocus,tag=monitorUI3-0done,limit=1] run function wancomatter:lobby/monitor/stage/random_done

execute if entity @e[tag=monitorUIfocus,tag=monitorUI4-1,limit=1] run function wancomatter:lobby/monitor/pve/easy
execute if entity @e[tag=monitorUIfocus,tag=monitorUI4-2,limit=1] run function wancomatter:lobby/monitor/pve/normal
execute if entity @e[tag=monitorUIfocus,tag=monitorUI4-3,limit=1] run function wancomatter:lobby/monitor/pve/hard
execute if entity @e[tag=monitorUIfocus,tag=monitorUI4-4,limit=1] run function wancomatter:lobby/monitor/pve/lunatic

execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-1,limit=1] run function wancomatter:lobby/monitor/pvp/2team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-2,limit=1] run function wancomatter:lobby/monitor/pvp/3team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-3,limit=1] run function wancomatter:lobby/monitor/pvp/4team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-4,limit=1] run function wancomatter:lobby/monitor/pvp/team-battleroyal
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-5,limit=1] run function wancomatter:lobby/monitor/pvp/team-tag
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-6,limit=1] run function wancomatter:lobby/monitor/pvp/team-trio
execute if entity @e[tag=monitorUIfocus,tag=monitorUI5-7,limit=1] run function wancomatter:lobby/monitor/pvp/team-tetra

execute if entity @e[tag=monitorUIfocus,tag=monitorUI7+1,limit=1] run function wancomatter:lobby/monitor/itemlimit_add
execute if entity @e[tag=monitorUIfocus,tag=monitorUI7-1,limit=1] run function wancomatter:lobby/monitor/itemlimit_remove
execute if entity @e[tag=monitorUIfocus,tag=monitorUI7-0,limit=1] run function wancomatter:lobby/monitor/itemlimit_done

execute if entity @e[tag=monitorUIfocus,tag=monitorUI8+1,limit=1] run function wancomatter:lobby/monitor/time_add
execute if entity @e[tag=monitorUIfocus,tag=monitorUI8-1,limit=1] run function wancomatter:lobby/monitor/time_remove
execute if entity @e[tag=monitorUIfocus,tag=monitorUI8-0,limit=1] run function wancomatter:lobby/monitor/time_done

execute if entity @e[tag=monitorUIfocus,tag=monitorUI9-0,limit=1] run function wancomatter:lobby/monitor/timeover/default
execute if entity @e[tag=monitorUIfocus,tag=monitorUI9-1,limit=1] run function wancomatter:lobby/monitor/timeover/narrow
execute if entity @e[tag=monitorUIfocus,tag=monitorUI9-2,limit=1] run function wancomatter:lobby/monitor/timeover/ender_dragon

execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-0,limit=1] run function wancomatter:lobby/monitor/timeset/done
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10+1,limit=1] run function wancomatter:lobby/monitor/timeset/100
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10+2,limit=1] run function wancomatter:lobby/monitor/timeset/1000
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-1,limit=1] run function wancomatter:lobby/monitor/timeset/100-
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-2,limit=1] run function wancomatter:lobby/monitor/timeset/1000-
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-6,limit=1] run function wancomatter:lobby/monitor/timeset/day
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-7,limit=1] run function wancomatter:lobby/monitor/timeset/noon
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-8,limit=1] run function wancomatter:lobby/monitor/timeset/night
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-9,limit=1] run function wancomatter:lobby/monitor/timeset/midnight
execute if entity @e[tag=monitorUIfocus,tag=monitorUI10-cancel,limit=1] run function wancomatter:lobby/monitor/timeset/cancel

execute if entity @e[tag=monitorUIfocus,tag=monitorUI12-0,limit=1] run function wancomatter:lobby/monitor/result/set
execute if entity @e[tag=monitorUIfocus,tag=monitorUI12-0switch,limit=1] as @e[tag=monitorUIfocus,tag=monitorUI12-0switch] at @s run function wancomatter:lobby/monitor/result/switch

execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-0,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/invalid
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-1,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/2team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-2,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/3team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-3,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/4team
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-4,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/team-battleroyal
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-5,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/team-tag
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-6,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/team-trio
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1-7,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/team-tetra

execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-0,limit=1] run function wancomatter:lobby/monitor/auto_setting/switch
execute if entity @e[tag=monitorUIfocus,tag=monitorUI13-1,limit=1] run function wancomatter:lobby/monitor/auto_setting/team/root

execute if entity @e[tag=monitorUIfocus,tag=monitorUI14-0,limit=1] run function wancomatter:lobby/monitor/teamarmor_on
execute if entity @e[tag=monitorUIfocus,tag=monitorUI14-1,limit=1] run function wancomatter:lobby/monitor/teamarmor_off

execute if entity @e[tag=monitorUIfocus,tag=monitorUI15-0,limit=1] run function wancomatter:lobby/monitor/team_edit_on
execute if entity @e[tag=monitorUIfocus,tag=monitorUI15-1,limit=1] run function wancomatter:lobby/monitor/team_edit_off

execute if entity @e[tag=monitorUIfocus,tag=monitorUI16+1,limit=1] run function wancomatter:lobby/monitor/pve/life_stock/add
execute if entity @e[tag=monitorUIfocus,tag=monitorUI16-1,limit=1] run function wancomatter:lobby/monitor/pve/life_stock/remove
execute if entity @e[tag=monitorUIfocus,tag=monitorUI16-0,limit=1] run function wancomatter:lobby/monitor/pve/life_stock/done
