execute if entity @a[team=Red,limit=1] store result score Red info if entity @a[team=Red,scores={maxHP=1..}]
execute if entity @a[team=Aqua,limit=1] store result score Aqua info if entity @a[team=Aqua,scores={maxHP=1..}]
execute if entity @a[team=Yellow,limit=1] store result score Yellow info if entity @a[team=Yellow,scores={maxHP=1..}]
execute if entity @a[team=Green,limit=1] store result score Green info if entity @a[team=Green,scores={maxHP=1..}]
execute if entity @a[team=Purple,limit=1] store result score Purple info if entity @a[team=Purple,scores={maxHP=1..}]
execute if entity @a[team=White,limit=1] store result score White info if entity @a[team=White,scores={maxHP=1..}]
execute if entity @a[team=Black,limit=1] store result score Black info if entity @a[team=Black,scores={maxHP=1..}]
execute if entity @a[team=Blue,limit=1] store result score Blue info if entity @a[team=Blue,scores={maxHP=1..}]
execute if entity @a[team=Pink,limit=1] store result score Pink info if entity @a[team=Pink,scores={maxHP=1..}]
execute if entity @a[team=Gold,limit=1] store result score Gold info if entity @a[team=Gold,scores={maxHP=1..}]
execute if entity @a[team=Gray,limit=1] store result score Gray info if entity @a[team=Gray,scores={maxHP=1..}]
execute if entity @a[team=DarkRed,limit=1] store result score DarkRed info if entity @a[team=DarkRed,scores={maxHP=1..}]
execute if entity @a[team=DarkAqua,limit=1] store result score DarkAqua info if entity @a[team=DarkAqua,scores={maxHP=1..}]
execute if entity @a[team=DarkGreen,limit=1] store result score DarkGreen info if entity @a[team=DarkGreen,scores={maxHP=1..}]
execute if entity @a[team=DarkBlue,limit=1] store result score DarkBlue info if entity @a[team=DarkBlue,scores={maxHP=1..}]
execute if entity @a[team=DarkGray,limit=1] store result score DarkGray info if entity @a[team=DarkGray,scores={maxHP=1..}]
execute if score #teamModify counter matches 11 store result score 残り人数 info if entity @a[team=battleroyal,scores={maxHP=1..}]

execute if score #teamModify counter matches 1..9 unless entity @a[scores={maxHP=1..},limit=1] run function wancomatter:game/win/draw
execute if score #teamModify counter matches 1..9 unless score Blue info matches 1.. unless score Yellow info matches 1.. unless score Green info matches 1.. run function wancomatter:game/win/red
execute if score #teamModify counter matches 1..9 unless score Red info matches 1.. unless score Yellow info matches 1.. unless score Green info matches 1.. run function wancomatter:game/win/blue
execute if score #teamModify counter matches 1..9 unless score Red info matches 1.. unless score Blue info matches 1.. unless score Green info matches 1.. run function wancomatter:game/win/yellow
execute if score #teamModify counter matches 1..9 unless score Red info matches 1.. unless score Blue info matches 1.. unless score Yellow info matches 1.. run function wancomatter:game/win/green

execute if score #teamModify counter matches 11 unless score 残り人数 info matches 2.. run function wancomatter:game/win/royal

execute if score #teamModify counter matches 12..19 run scoreboard players set #game info 0
execute if score #teamModify counter matches 12..19 if score Red info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Aqua info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Yellow info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Green info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Purple info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score White info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Black info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Blue info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Pink info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Gold info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score Gray info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score DarkRed info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score DarkAqua info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score DarkGreen info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score DarkBlue info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score DarkGray info matches 1.. run scoreboard players add #game info 1
execute if score #teamModify counter matches 12..19 if score #game info matches 1 run function wancomatter:game/win/royal
