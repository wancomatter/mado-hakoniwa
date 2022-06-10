execute if score Red info matches 0.. run scoreboard players operation #dummy info > Red info
execute if score Aqua info matches 0.. run scoreboard players operation #dummy info > Aqua info
execute if score Yellow info matches 0.. run scoreboard players operation #dummy info > Yellow info
execute if score Green info matches 0.. run scoreboard players operation #dummy info > Green info
execute if score Purple info matches 0.. run scoreboard players operation #dummy info > Purple info
execute if score White info matches 0.. run scoreboard players operation #dummy info > White info
execute if score Black info matches 0.. run scoreboard players operation #dummy info > Black info
execute if score Blue info matches 0.. run scoreboard players operation #dummy info > Blue info
execute if score Pink info matches 0.. run scoreboard players operation #dummy info > Pink info
execute if score Gold info matches 0.. run scoreboard players operation #dummy info > Gold info
execute if score Gray info matches 0.. run scoreboard players operation #dummy info > Gray info
execute if score DarkRed info matches 0.. run scoreboard players operation #dummy info > DarkRed info
execute if score DarkAqua info matches 0.. run scoreboard players operation #dummy info > DarkAqua info
execute if score DarkGreen info matches 0.. run scoreboard players operation #dummy info > DarkGreen info
execute if score DarkBlue info matches 0.. run scoreboard players operation #dummy info > DarkBlue info
execute if score DarkGray info matches 0.. run scoreboard players operation #dummy info > DarkGray info
execute if score #dummy info = Red info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Aqua info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Yellow info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Green info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Purple info run scoreboard players add #dummy dummy 1
execute if score #dummy info = White info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Black info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Blue info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Pink info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Gold info run scoreboard players add #dummy dummy 1
execute if score #dummy info = Gray info run scoreboard players add #dummy dummy 1
execute if score #dummy info = DarkRed info run scoreboard players add #dummy dummy 1
execute if score #dummy info = DarkAqua info run scoreboard players add #dummy dummy 1
execute if score #dummy info = DarkGreen info run scoreboard players add #dummy dummy 1
execute if score #dummy info = DarkBlue info run scoreboard players add #dummy dummy 1
execute if score #dummy info = DarkGray info run scoreboard players add #dummy dummy 1

execute if score #teamModify counter matches 1..9 if score #dummy dummy matches 1 if score Red info >= #dummy info run function wancomatter:game/win/red
execute if score #teamModify counter matches 1..9 if score #dummy dummy matches 1 if score Blue info >= #dummy info run function wancomatter:game/win/blue
execute if score #teamModify counter matches 1..9 if score #dummy dummy matches 1 if score Yellow info >= #dummy info run function wancomatter:game/win/yellow
execute if score #teamModify counter matches 1..9 if score #dummy dummy matches 1 if score Green info >= #dummy info run function wancomatter:game/win/green

execute if score #teamModify counter matches 11 if score 残り人数 info matches 2.. run function wancomatter:game/win/draw
execute if score #teamModify counter matches 11 unless score 残り人数 info matches 2.. run function wancomatter:game/win/royal

execute unless score #gametime counter matches 50.. run function wancomatter:game/win/draw

execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Red info >= #dummy info run tag @a[team=Red] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Aqua info >= #dummy info run tag @a[team=Aqua] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Yellow info >= #dummy info run tag @a[team=Yellow] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Green info >= #dummy info run tag @a[team=Green] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Purple info >= #dummy info run tag @a[team=Purple] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score White info >= #dummy info run tag @a[team=White] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Black info >= #dummy info run tag @a[team=Black] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Blue info >= #dummy info run tag @a[team=Blue] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Pink info >= #dummy info run tag @a[team=Pink] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Gold info >= #dummy info run tag @a[team=Gold] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score Gray info >= #dummy info run tag @a[team=Gray] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score DarkRed info >= #dummy info run tag @a[team=DarkRed] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score DarkAqua info >= #dummy info run tag @a[team=DarkAqua] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score DarkGreen info >= #dummy info run tag @a[team=DarkGreen] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score DarkBlue info >= #dummy info run tag @a[team=DarkBlue] add win
execute if score #teamModify counter matches 12..19 if score #dummy dummy matches 1 if score DarkGray info >= #dummy info run tag @a[team=DarkGray] add win

scoreboard players reset #dummy