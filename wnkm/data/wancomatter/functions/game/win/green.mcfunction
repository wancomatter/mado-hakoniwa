playsound minecraft:ui.toast.challenge_complete master @a 0 -100 0 0 1 1
title @a times 10 110 10
title @a title {"text":"Green Team win!!","color":"green","underlined":true}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
tellraw @a ["",{"selector":"@a[team=Green]","bold":true},{"text":" の勝利です。おめでとうございます！"}]
execute at @a[team=Green] run summon firework_rocket ~ ~3 ~ {Tags:["stable"],LifeTime:20,Motion:[0d,0.4d,0d],FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;65280],FadeColors:[I;65280]},{Type:2,Flicker:1b,Colors:[I;16777215],FadeColors:[I;16777215]}]}}}}
function wancomatter:game/win/general