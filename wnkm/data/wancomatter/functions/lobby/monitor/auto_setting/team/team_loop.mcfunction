execute if score #teamModify counter matches 1.. run team join Red @r[team=]
execute if score #teamModify counter matches 3.. run team join Yellow @r[team=]
execute if score #teamModify counter matches 2.. run team join Blue @r[team=]
execute if score #teamModify counter matches 4.. run team join Green @r[team=]
execute if entity @p[team=] run function wancomatter:lobby/monitor/pvp/team_loop