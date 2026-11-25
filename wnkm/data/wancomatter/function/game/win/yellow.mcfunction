playsound minecraft:ui.toast.challenge_complete master @a 0 -100 0 0 1 1
title @a times 10 110 10
title @a title {"text":"Yellow Team win!!","color":"yellow","underlined":true}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
tellraw @a ["",{"selector":"@a[team=Yellow]","bold":true},{"text":" の勝利です。おめでとうございます！"}]
execute at @a[team=Blue] run summon firework_rocket ~ ~3 ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;16776960],fade_colors:[I;16776960],shape:"large_ball"},{colors:[I;16777215],fade_colors:[I;16777215],has_twinkle:1b,shape:"star"}],flight_duration:0b}},count:1,id:"minecraft:firework_rocket"},LifeTime:20,Motion:[0.0d,0.4d,0.0d],Tags:["stable","wnkm.owned"]}
function wancomatter:game/win/general
