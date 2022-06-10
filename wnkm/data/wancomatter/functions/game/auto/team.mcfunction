execute unless score #teamModify counter matches 11 run team leave @a[team=!z_spectate]
execute if score #teamModify counter matches 11 run team join battleroyal @a[team=!z_spectate]
tellraw @a [{"text":"[システム] "},{"text":"チームを振り分けました。 "}]
execute if score #teamModify counter matches 2..9 run function wancomatter:lobby/monitor/pvp/team_loop
execute if score #teamModify counter matches 12 run function wancomatter:game/auto/team-2
execute if score #teamModify counter matches 13 run function wancomatter:game/auto/team-3
execute if score #teamModify counter matches 14 run function wancomatter:game/auto/team-4
