playsound minecraft:ui.toast.challenge_complete master @a 0 -100 0 0 1 1
title @a times 10 110 10
title @a title {"text":"You win!!","color":"aqua","underlined":true}
execute at @a run summon firework_rocket ~ ~3 ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;65535],fade_colors:[I;65535],shape:"large_ball"},{colors:[I;16777215],fade_colors:[I;16777215],has_twinkle:1b,shape:"star"}],flight_duration:0b}},count:1,id:"minecraft:firework_rocket"},LifeTime:20,Motion:[0.0d,0.4d,0.0d],Tags:["stable","wnkm.owned"]}
function wancomatter:game/win/general
