execute store result score 残り人数 info if entity @a[team=Aqua,scores={lifestock=1..}]

execute unless score 残り人数 info matches 1.. run function wancomatter:game/win/lose
execute unless entity @e[tag=boss,limit=1] run function wancomatter:game/win/pve
